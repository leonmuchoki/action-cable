// client-side instance of our WEbsocket connection

//= require cable
//= require_self
//= require_tree .


this.App = {};

App.cable = ActionCable.createConsumer();