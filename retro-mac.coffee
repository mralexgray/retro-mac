
# import './item.coffee'

class RetroMac
	
	constructor: (@container) ->
		
		$(@container).css
			margin: 0
			padding: 0
			height: '100vh'
			width: '100vw'
			display: 'flex'
			background: 'url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAQAAAAECAMAAACeL25MAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAAGUExURQAAAP///6XZn90AAAAUSURBVHjaYmBgYGRkABMwmgEgwAAAZAAJ3XHMfQAAAABJRU5ErkJggg==")'
		.append @nav = $('<div>').css
			display: 'flex'
			'flex-basis': '100%'
			'justify-content': 'flex-between'
			# padding: '6px 15px'
			'align-items': 'center'
			'border-bottom': '1px solid black'
			background: 'white'
			# position: 'fixed'
			# top: 0
			# 'min-width': '100vw'
			height: '22px'
		@items = []
	addItem: (item) ->
		@items.push item
		$(@container).append $(item.domElement)