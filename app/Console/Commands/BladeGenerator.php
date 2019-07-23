<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class BladeGenerator extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'blade:generator {name} {fields*}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $name = $this->argument('name');
        $fields = $this->argument('fields');
        $this->check($name, $fields);
        $this->replace($name, $fields);
    }

    public function check($name, $fields)
    {
        $d = str_replace(
            ['{{viewname}}', '{{moduleNameLowerCase}}'],
            [$name, strtolower($name)],
            $this->getStub('index')
        );

        file_put_contents(base_path("Modules/{$name}/Resources/views/index.blade.php"), $d);

        $a = str_repeat('<th>{{displayname}}</th>', count($fields));
        $b = str_replace(['{{displaynames}}'], [$a], $this->getFile($name, 'index'));

        file_put_contents(base_path("Modules/{$name}/Resources/views/index.blade.php"), $b);
    }

    public function replace($name, $fields)
    {
        $c = str_replace_array('{{displayname}}', $fields, $this->getFile($name, 'index'));
        file_put_contents(base_path("Modules/{$name}/Resources/views/index.blade.php"), $c);
    }

    public function getStub($type)
    {
        return file_get_contents(resource_path("stubs/{$type}.stub"));
    }

    public function getFile($name, $type)
    {
        return file_get_contents(base_path("Modules/{$name}/Resources/views/{$type}.blade.php"));
    }
}
