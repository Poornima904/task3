sap.ui.define(['sap/ui/core/mvc/ControllerExtension'], function (ControllerExtension) {
	'use strict';

	return ControllerExtension.extend('appcollege1.ext.controller.ObjCreate2', {
		// this section allows to extend lifecycle hooks or hooks provided by Fiori elements
		override: {
			/**
             * Called when a controller is instantiated and its View controls (if available) are already created.
             * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
             * @memberOf appcollege1.ext.controller.ObjCreate2
             */
			onInit: function () {
				// you can access the Fiori elements extensionAPI via this.base.getExtensionAPI
				var oModel = this.base.getExtensionAPI().getModel();
			},
			routing:
			{
				onBeforeBinding:function(){
					debugger
					// sap.ui.getCore().byId("CreateDialog::c_id").setVisible(false);
				},
				onAfterBinding:function(){
					debugger
					// sap.ui.getCore().byId("CreateDialog::c_id").setVisible(false);
				}
			},
			editFlow:{

			
				onBeforeCreate:function(){
					debugger
					// sap.ui.getCore().byId("CreateDialog::c_id").setVisible(false);
				},
				onAfterCreate:function(){
					debugger
					// sap.ui.getCore().byId("CreateDialog::c_id").setVisible(false)
				}
			}
		}
	});
});
