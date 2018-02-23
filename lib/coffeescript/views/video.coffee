View = require './view'
utils = require '../utils'

module.exports = class Video extends View
    className: 'incito__video-view incito--lazyload'

    tagName: 'video'

    render: ->
        if @attrs.autoplay is true
            @el.setAttribute 'autoplay', ''
        
        if @attrs.loop is true
            @el.setAttribute 'loop', ''
        
        if @attrs.controls is true
            @el.setAttribute 'controls', ''
        
        @el.setAttribute 'muted', ''
        
        if utils.isDefinedStr @attrs.src
            sourceEl = document.createElement 'source'

            sourceEl.setAttribute 'data-src', @attrs.src
            sourceEl.setAttribute 'type', @attrs.mime

            @el.appendChild sourceEl

        @