<jsp:include page="header_admin.jsp"></jsp:include>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>
<style type="text/css">
</style>
<div class="container">
<div class="col-md-10 col-md-offset-1">
         <div class="panel panel-default panel-table">
           <div class="panel-heading">
             <div class="row">
               <div class="col col-xs-4 text-left">
                 <h3 class="panel-title">Student Information </h3>
               </div>
               <div class="col col-xs-4 text-right">
                   <!--  <div class="form-group">
                      <div class="col col-xs-1 text-right ">
                        <label for="usr">Size:</label>
                      </div>
                      <div class="col col-xs-1 "></div>
                      <div class="col col-xs-1 ">
                        <select  ng-model="page.selectedSize" ng-options="pageSingle as pageSingle.key for pageSingle in page.pagesizes track by pageSingle.key" ng-change="getPageDetails()">
                        </select>
                      </div>
                    </div> -->
               </div>
               <div class="col col-xs-4 text-right">
                 <button type="button" class="btn btn-sm btn-primary btn-create " data-toggle="modal" data-target="#myModal" ng-click="changeTextForCreate()">Create</button>
               </div>
             </div>
           </div>
           <div class="panel-body">
             <table class="table table-bordered table-list table-hover " style="overflow: auto">
               <thead>
                 <tr>
                     <th class="hidden-xs">ID</th>
                     <th>Name</th>
                     <th><em class="fa fa-cog" ></em></th>
                 </tr>
               </thead>
               <tbody>
                       <tr  >
                         <td class="hidden-xs"><span>1</span></td>
                         <td><span>Sidd</span></td>
                           <td>
                             <a class="btn btn-default" onClick="loadEditDetails(1)" data-toggle="modal" data-target="#myModal" ><em class="fa fa-pencil"></em></a>
                             <a class="btn btn-danger" onClick="prepareForDelete(1)" data-toggle="modal" data-target="#deleteModal"><em class="fa fa-trash"></em></a>
                           </td>
                       </tr>
                      
                </tbody>

             </table>
             <!-- <div class="panel-footer">
                 <div class="row">
                   <div class="col col-xs-4 text-left"></span>
                   </div>
                   <div class="col col-xs-4 text-right">
                       <div class="col col-xs-1"><span ng-bind="pageInfo.pageNumber + 1"></div>
                       <div class="col col-xs-1">of</div>
                       <div class="col col-xs-1"><span ng-bind="totalPages"></div>
                   </div>
                   <div class="col col-xs-4">
                     <ul class="pagination">
                        <li class="page-item" ng-show="!first" ><a ng-click="getPrevPageDetails()"  class="page-link" href="#">Previous</a></li>
                        <li class="page-item" ng-show="!last"><a  ng-click="getNextPageDetails()" class="page-link" href="#">Next</a></li>
                      </ul>
                   </div>
                 </div>
             </div>  -->
           </div>
        </div>

<!-- Starting modal window for Create and Edit here -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
     	 <h4 id = "modal-title" class="modal-title">Create / Edit </h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        
      </div>
      <div class="modal-body">
        <p>Enter Student Details </p>
	  <div class="form-group">
	    <label for="id">ID:</label>
	    <input type="text" class="form-control" id="id" disabled ng-model="singleStudent.id">
	  </div>
	  <div class="form-group">
	    <label for="name">Name:</label>
	    <input type="text" class="form-control" id="name" ng-model="singleStudent.name" >
	  </div>
      </div>
      <div class="modal-footer">
       
	      <button type="submit" class="btn btn-primary" data-dismiss="modal" on-click="createStudent()">Create</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!--End Modal Form here  -->

<!--  Starting Madal for Permanent Delete Here-->
<div id="deleteModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <h4 id = "modal-title" class="modal-title">Delete Student</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <p>Are you sure you want to delete this Student permanently ?</p>
	    <div class="modal-footer">
        <button type="submit" class="btn btn-danger" data-dismiss="modal" ng-click="deleteStudent()" >Delete</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- Ending Delete Modal here  -->
</div>
</div>
<jsp:include page="footer.html"></jsp:include>