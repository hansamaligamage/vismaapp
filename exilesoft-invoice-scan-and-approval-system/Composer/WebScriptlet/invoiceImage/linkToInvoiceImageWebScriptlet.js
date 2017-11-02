cng.webscriptlet.builtin.externalized.invoiceImage = {};

cng.webscriptlet.builtin.externalized.invoiceImage.LinkToInvoiceImage = function (context) {

	this.context = context;
	
	this.doInitialize = function (){
		var thisObj = this;
		this.txtDecoratorElement = this.context.getFormQuestionHelper().getPageElementByUniquePath(this.context.getPageElementInstanceUniquePath());
		if (this.txtDecoratorElement != null) {
			this.txtDecoratorElement.handleLinkOnClick(function(event) {
				event.preventDefault();
				return thisObj.handleLinkClick();
			});
		}
	}
	
	this.handleLinkClick = function() {
	debugger;
		var width = this.context.getParameterValueAsInt('width', 500);
		var height = this.context.getParameterValueAsInt('height', 300);
		var invoiceAlias = this.context.getParameterValue('invoiceId');
		var baseUrl = this.context.getParameterValue('baseUrl');
		if(typeof baseUrl === "undefined"){
			baseUrl = 'http://rioangrybirds.net/wp-content/uploads/2016/06';
		}
		
		var invoiceId = this.getValueFromAlias(invoiceAlias);
		
		var url = baseUrl + '/' + invoiceId + '.jpg';
		console.log("URL" + url);
		cng.Utilities.openPopUp(url, 'Invoice', width, height);
		return false;
	};
	
	this.getValueFromAlias = function (alias){
		var formHelper = this.context.getFormQuestionHelper();
		var question = formHelper.getQuestionByIdOrAlias(alias);
		var value = question.getAnswer();
		return value;
	};
		
}