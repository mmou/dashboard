$ ->
        getWeather = ->
                $.get('/weather', (data) ->
                        current = data.current

                        $('#weather .temp').html("#{current.temp}&deg;F")
                        $('#weather .description').html(current.description)
                        $('#weather img').attr('src', current.icon)

                )

                # Update every 2 minutes
                setTimeout(getWeather, 120000)

        getWeather()
                