utils =
    formatUnit: (unit) ->
        if typeof unit is 'number'
            return "#{unit}px"
        else if typeof unit is 'string'
            return unit.replace 'dp', 'px'
        else
            return 0
    
    isDefinedStr: (value) ->
        typeof value is 'string' and value.length > 0

module.exports = utils