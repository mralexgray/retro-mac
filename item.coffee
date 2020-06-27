



# class Element
	# constructor: (elementType = 'div') ->
		# @domElement = document.createElement(elementType)

class Item
	constructor: (@name, @icon, elementType = 'div') ->

		@domElement = $("<#{elementType}>")
		.append $('<div>').text(@icon)
		.append $('<span>').text(@name)


		# @domElement = document.createElement(elementType)
	###
	# Function to set multiple attributes to a DOM object.
	setAttributes: (attributes) ->
		return if not attributes?
		domElement = @domElement;
		attributeKeys = Object.keys(attributes);
			for(let i=0; i<attributeKeys.length; i++) {
				if(attributeKeys[i] == "innerHTML")
					domElement.innerHTML = attributes[attributeKeys[i]];
				else
					domElement.setAttribute(attributeKeys[i], attributes[attributeKeys[i]]);
			}
			this.domElement = domElement;
		}
		
		return this;
	}
	
	// Function to set inline CSS to the DOM object.
	setStyles(styles) {
		if(styles != undefined || styles != null) {
			const domElement = this.domElement;
			const styleKeys = Object.keys(styles);
			for(let i=0; i<styleKeys.length; i++)
				domElement.style[styleKeys[i]] = styles[styleKeys[i]];
			this.domElement = domElement;
		}
		return this;
	}
	// Function to get the DOM element.
	getDOM() {
		return this.domElement;
	}
	// Function to append a child element to the main element.
	appendTo(childElement) {
		let parentElement = this.domElement;
		if(childElement instanceof Element)
			childElement = childElement.getDOM();
		parentElement.append(childElement);
		this.domElement = parentElement;
		return this;
	}
	// Function to prepend a child element to the main element.
	prependTo(childElement) {
		let parentElement = this.domElement;
		if(childElement instanceof Element)
			childElement = childElement.getDOM();
		parentElement.prepend(childElement);
		this.domElement = parentElement;
		return this;
	}
}
###