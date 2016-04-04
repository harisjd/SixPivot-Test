$(function () {

    function getDetails() {
        $.ajax({
            type: "POST",
            contentType: "application/json; charset=utf-8",
            url: "PuzzleThree.aspx/GetShapeCategories",
            data: {},
            dataType: "json",
            success: function (data) {
                if (data != null) {

                    var shapeCategories = $.parseJSON(data.d);

                    var htmlToAppend = '';
                    var previousValue = '';
                    $("#menu").html('');
                    $.each(shapeCategories, function (index, value) {
                        if (previousValue != value.ShapeCategoryName) {
                            previousValue = value.ShapeCategoryName;
                            htmlToAppend += '<li class="ui-widget-header">' + value.ShapeCategoryName + '</li>' +
                                            '<li class="child" data-shape = "' + value.ShapeName + '">' + value.ShapeName + '</li>';
                        }
                        else {
                            htmlToAppend += '<li class="child" data-shape = "' + value.ShapeName + '">' + value.ShapeName + '</li>';
                        }
                    });

                    $("#menu").append(htmlToAppend);
                }
            },
            error: function () {
                alert("Error while Showing update data");
            }
        });
    }

    getDetails();


    $( "#menu" ).menu({
      items: "> :not(.ui-widget-header)"
    });


    $(document).on("click", ".child", function () {
        if ($(this).data("shape") == "Circle") {
            var canvas = document.getElementById('myCanvas');
            var context = canvas.getContext('2d');

            canvas.width = canvas.width;

            var centerX = canvas.width / 2;
            var centerY = canvas.height / 2;
            var radius = 70;

            context.beginPath();
            context.arc(centerX, centerY, radius, 0, 2 * Math.PI, false);
            context.fillStyle = 'green';
            context.fill();
            context.lineWidth = 5;
            context.strokeStyle = '#003300';
            context.stroke();
        }
        else if ($(this).data("shape") == "Rectangle")
        {
            var canvas = document.getElementById('myCanvas');
            var context = canvas.getContext("2d");

            
            canvas.width = canvas.width;
            
            context.clearRect(0, 0, canvas.width, canvas.height);

            context.rect(20, 20, 150, 100);
            context.stroke();
        }
        else if ($(this).data("shape") == "Equilateral Triangle")
        {
        }

    });
   

  });