$(function () {

   $('#indexTable').bootstrapTable({
       striped:true,
       showColumns:true,
       showRefresh:true,
       toolbar : '#toolbar',
       clickToSelect:true,
       search:true,
       showToggle:true,
       searchOnEnterKey:true,
       pagination:true,
       pageNumber:1,
       pageSize:10,
       pageList:[2,10,25,50,100],
       checkbox:true,
       columns: [{
           field : 'checked',
           checkbox : true,
           align:'center',
           halign:'center',
       },
       {
           field: 'id',
           title: 'Item ID',
           align:'center',
           halign:'center',
       }, {
           field: 'name',
           title: 'Item Name',
           align:'center',
           halign:'center',
       }, {
           field: 'price',
           title: 'Item Price',
           align:'center',
           halign:'center',
       }],
       data: [{
           id: 1,
           name: 'Item 1',
           price: '$1'
       }, {
           id: 2,
           name: 'Item 2',
           price: '$2'
       }, {
           id: 2,
           name: 'Item 2',
           price: '$2'
       }, {
           id: 2,
           name: 'Item 2',
           price: '$2'
       }, {
                   id: 2,
                   name: 'Item 2',
                   price: '$2'
               }, {
                           id: 2,
                           name: 'Item 2',
                           price: '$2'
                       }, {
                                   id: 2,
                                   name: 'Item 2',
                                   price: '$2'
                               }, {
                                           id: 2,
                                           name: 'Item 2',
                                           price: '$2'
                                       }, {
                                                   id: 2,
                                                   name: 'Item 2',
                                                   price: '$2'
                                               }, {
                                                           id: 2,
                                                           name: 'Item 2',
                                                           price: '$2'
                                                       }, {
                                                                   id: 2,
                                                                   name: 'Item 2',
                                                                   price: '$2'
                                                               }, {
                                                                           id: 2,
                                                                           name: 'Item 2',
                                                                           price: '$2'
                                                                       }, {
                                                                                   id: 2,
                                                                                   name: 'Item 2',
                                                                                   price: '$2'
                                                                               }, {
                                                                                           id: 2,
                                                                                           name: 'Item 2',
                                                                                           price: '$2'
                                                                                       }, {
                                                                                                   id: 2,
                                                                                                   name: 'Item 2',
                                                                                                   price: '$2'
                                                                                               }, {
                                                                                                           id: 2,
                                                                                                           name: 'Item 2',
                                                                                                           price: '$2'
                                                                                                       }]
   });
});