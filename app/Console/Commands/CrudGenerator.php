<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;

class CrudGenerator extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'crud:generator {name : Class (Singular) for example User} {table}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Create CRUD operations';

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
        $table = $this->argument('table');

        $this->controller($name, $table);
        $this->model($name, $table);

        // File::append(base_path('routes/web.php'), 'Route::resource(\'' . str_plural(strtolower($name)) . "', '{$name}Controller');");
    }

    protected function getStub($type)
    {
        return file_get_contents(resource_path("stubs/$type.stub"));
    }

    protected function model($name, $table)
    {
        $modelTemplate = str_replace(
            ['{{modulename}}', '{{modelname}}', '{{tablename}}'],
            [$name, $name, $table],
            $this->getStub('Model')
        );

        file_put_contents(base_path("Modules/{$name}/Entities/{$name}.php"), $modelTemplate);
    }

    protected function controller($name, $table)
    {
        $controllerTemplate = str_replace(
            [
                '{{tablename}}',
                '{{modulename}}',
                '{{modelname}}',
                '{{modelNamePluralLowerCase}}',
                '{{modelNameSingularLowerCase}}'
            ],
            [
                $table,
                $name,
                $name,
                strtolower(str_plural($name)),
                strtolower($name)
            ],
            $this->getStub('Controller')
        );

        file_put_contents(base_path("Modules/{$name}/Http/Controllers/{$name}Controller.php"), $controllerTemplate);
    }
}
