sap.ui.define(['sap/ui/core/mvc/ControllerExtension'], function (ControllerExtension) {
	'use strict';

	return ControllerExtension.extend('appcollege1.ext.controller.ListCreate', {
		// this section allows to extend lifecycle hooks or hooks provided by Fiori elements
		override: {
			/**
             * Called when a controller is instantiated and its View controls (if available) are already created.
             * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
             * @memberOf appcollege1.ext.controller.ListCreate
             */
			onInit: function () {
				// you can access the Fiori elements extensionAPI via this.base.getExtensionAPI
				var oModel = this.base.getExtensionAPI().getModel();
			},
			editFlow:{

			
				onBeforeCreate:function(){
					debugger
					// sap.ui.getCore().byId("CreateDialog::c_id").setVisible(false)
				},
				onAfterCreate:function(){
					debugger
					// sap.ui.getCore().byId("CreateDialog::c_id").setVisible(false)
				}
			}
		}
	});
});
