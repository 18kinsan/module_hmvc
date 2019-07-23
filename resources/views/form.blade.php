<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
    <div class="container mt-5">
        <h3>Create new table here!</h3>
        <form action="{{ url('/post') }}" method="post" id="form">
            {{ csrf_field() }}
            <input type="text" name="modulename" id="" class="form-control mb-2" placeholder="Module Name">
            <input type="text" name="tablename" id="" class="form-control mb-2" placeholder="Table Name">
            <div id="rows">
                <div class="form-group form-inline">
                    <input type="text" name="tablecolumns[1][columnname]" placeholder="Column Name" value="id" class="form-control">
                    <input type="text" name="tablecolumns[1][displayname]" placeholder="Display Name" value="ID" class="form-control ml-2">
                    <input type="number" name="tablecolumns[1][length]" placeholder="Column Length" value="11" class="form-control ml-2">
                    <select name="tablecolumns[1][datatype]" id="select1" class="form-control ml-2">
                        @foreach ($data as $item)
                            <option value="{{ strtolower($item->datatype_name) }}">{{ $item->datatype_name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <button id="addfield" class="btn btn-light">Add new field</button>
            <input type="submit" value="Generate" class="btn btn-primary">
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <script>
        $(document).ready(function () {
            var num = 1;
            $('#addfield').on('click', function (e) {
                e.preventDefault();
                var div, select, url, option;
                
                
                url = 'http://localhost/tes-generator/lara_dynamictable/json';
                div = $('<div class="form-group form-inline"/>')
                select = $('<select name="tablecolumns['+ (num+1) +'][datatype]" id="" class="form-control ml-2"/>')

                $.getJSON(url, function (data) {
                    data.forEach(element => {
                       option = $('<option id="option'+ (num+1) +'"></option>') 
                       option.val(element.datatype_name.toLowerCase())
                       option.text(element.datatype_name)
                       option.appendTo(select)
                    });
                })

                div.append('<input type="text" name="tablecolumns['+ (num + 1) +'][columnname]" placeholder="Column Name"  class="form-control">')
                div.append('<input type="text" name="tablecolumns['+ (num + 1) +'][displayname]" placeholder="Display Name"  class="form-control ml-2">')
                div.append('<input type="number" name="tablecolumns['+ (num + 1) +'][length]" placeholder="Column Length"  class="form-control ml-2">')
                div.append(select)

                div.appendTo('#rows')
                ++num
            }); 
        });
    </script>
</body>
</html>