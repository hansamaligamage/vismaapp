cng.webscriptlet.builtin.externalized.redirectIframe = {};

cng.webscriptlet.builtin.externalized.invoice.redirectIframe = function (context) {
	this.context = context;
	
		this.doInitialize = function (){
		var thisObj = this;
		this.txtDecoratorElement = this.context.getFormQuestionHelper().getPageElementByUniquePath(this.context.getPageElementInstanceUniquePath());
		if (this.txtDecoratorElement != null) {
			this.txtDecoratorElement.handleLinkOnClick(function(event) {
				event.preventDefault();
				return thisObj.handleClick();
			});
		}
	}
	
	this.handleClick = function() {
	debugger;
		var redirectUrl = this.context.getParameterValue('redirectUrl');
		
		if(typeof redirectUrl !== "undefined"){
			redirectUrl = 'http://localhost:2816/index.html#/pendingInvoice';
			window.top.location.href = 
			return false;
		}
		
		
	};
		
}