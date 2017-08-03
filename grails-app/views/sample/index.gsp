<!DOCTYPE html>
<html>
  <head>
  <script
  src="http://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
  </head>
  <body>

          <button type="button" class="btn btn-secondary" onclick="doajax('POST')">POST</button>
          <button type="button" class="btn btn-primary" onclick="doajax('PUT')">PUT</button>



    <script>
    var doajax = function (method)
    {
    	$.ajax({
            type: method,
            url: '${createLink(action:"action")}',
            data: {data: 1, string: "hey"},
            success: function(data, statusText, response)
            {
              console.log(data);
            },
            error: function(response, statusText)
            {
              console.log(JSON.parse(response.responseText));
            }
          });
    }
    </script>

  </body>
</html>