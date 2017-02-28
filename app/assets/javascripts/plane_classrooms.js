
$(document).ready(function(){

	$('ul.tabs').tabs();

	$('#plane_classroom_course_id').on('change', function(){

		courseId = $(this).val();
		loadModules(courseId);

	});

	$('#plane_classroom_course_module_id').on('change', function(){

		moduleId = $(this).val();
		loadStudyUnits(moduleId);

	});

})


loadModules = function(courseId){

	module_field = $('#plane_classroom_course_module_id');
	module_field.html('<option value="load">Carregando...</option>');

	$.getJSON( "/course_modules.json", {course_id: courseId}, function( data ) {

		var html = '<option value="">Selecione</option>';

		$.each(data, function(index, module) {
			html += '<option value="' + module.id + '">' + module.description + '</option>';
		});

		module_field.html(html);
		module_field.material_select();

	});

}

loadStudyUnits = function(moduleId){

	study_units_field = $('#plane_classroom_study_unit_id');
	study_units_field.html('<option value="load">Carregando...</option>');

	$.getJSON( "/study_units.json", {course_module_id: moduleId}, function( data ) {

		var html = '<option value="">Selecione</option>';

		$.each(data, function(index, study_unit) {
			html += '<option value="' + study_unit.id + '">' + study_unit.description + '</option>';
		});

		study_units_field.html(html);
		study_units_field.material_select();

	});

}
