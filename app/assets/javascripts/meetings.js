$(document).ready(function(){	

	$('select').material_select();

	$('#meeting_attitudinal_skill_ids').on('change', function(){

		attitudinalSkillIds = $(this).val();
		specificSkillId = $('#meeting_specific_skill_id').val();
		categoryId = $('#meeting_category_id').val();
		loadTeacherActivities(specificSkillId, attitudinalSkillIds, categoryId);
	  loadEvidences(attitudinalSkillIds);

	});

	$('#meeting_category_id').on('change', function(){

		categoryId = $(this).val();
		loadVerbs(categoryId);
		loadStrategies(categoryId);

		specificSkillId = $('#meeting_specific_skill_id').val();
		attitudinalSkillIds = $('#meeting_attitudinal_skill_ids').val();
		loadTeacherActivities(specificSkillId, attitudinalSkillIds, categoryId);

	});

	$('#meeting_specific_skill_id').on('change', function(){

		specificSkillId = $(this).val();
		attitudinalSkillIds = $('#meeting_attitudinal_skill_ids').val();
		categoryId = $('#meeting_category_id').val();

		loadTeacherActivities(specificSkillId, attitudinalSkillIds, categoryId);

	});

	var last_valid_selection = null;

	/*
	$('#meeting_attitudinal_skill_ids').change(function(event) {
  	//validateSelect($(this));

  	skillId = $('#meeting_specific_skill_id').val();
  	attitudinalSkillIds = $(this).val();
  	verbIds = $('#meeting_verb_ids').val();
  	loadTeacherActivities(skillId, attitudinalSkillIds, verbIds);

  });
	*/

  $('#meeting_verb_ids').on('change', function(){

		skillId = $('#meeting_specific_skill_id').val();
		attitudinalSkillIds = $('#meeting_attitudinal_skill_ids').val();
		verbIds = $(this).val();
		loadTeacherActivities(skillId, attitudinalSkillIds, verbIds);

	});



})


validateSelect = function(field){
	if (field.val().length > 3) {
  	alert('Você só pode selecinar 3 opções!');
    field.val(last_valid_selection);
  } else {
    last_valid_selection = field.val();
  }
}

loadEvidences = function(skillsId){

	evidence_field = $('#meeting_evidence_ids');
	evidence_field.html('<option value="load">Carregando...</option>');

	$.getJSON( "/evidences.json", {skills_id: skillsId}, function( data ) {

        html = "";
		$.each(data, function(index, evidence) {
			html += '<option value="' + evidence.id + '">' + evidence.description + '</option>';
		});

		evidence_field.html(html);
		evidence_field.material_select();

	});

}

loadTeacherGeneratingThemes = function(){

	generating_theme_field = $('#meeting_generating_theme_id');
	generating_theme_field.html('<option value="load">Carregando...</option>');

	$.getJSON( "/teacher_generating_themes.json", {}, function( data ) {

		html = "";
		$.each(data, function(index, theme) {
			html += '<option value="' + theme.id + '">' + theme.description + '</option>';
		});

		generating_theme_field.html(html);
		generating_theme_field.material_select();

	});

}

loadVerbs = function(categoryId){

	verbs_field = $('#meeting_verb_ids');
	verbs_field.html('<option value="load">Carregando...</option>');

	$.getJSON( "/verbs.json", {category_id: categoryId}, function( data ) {

        html = "";
		$.each(data, function(index, verb) {
			html += '<option value="' + verb.id + '">' + verb.description + '</option>';
		});

		verbs_field.html(html);
		verbs_field.material_select();

	});

}

loadStrategies = function(categoryId){

	strategies_field = $('#meeting_strategy_ids');
	strategies_field.html('<option value="load">Carregando...</option>');

	$.getJSON( "/strategies.json", {category_id: categoryId}, function( data ) {

        html = "";
		$.each(data, function(index, strategy) {
			html += '<option value="' + strategy.id + '">' + strategy.description + '</option>';
		});

		strategies_field.html(html);
		strategies_field.material_select();

	});

}

loadTeacherActivities = function(specificSkillId, attitudinalSkillIds, categoryId){

	activity_field = $('#meeting_activity_ids');
	activity_field.html('<option value="load">Carregando...</option>');

	$.getJSON( "/teacher_activities.json", {specific_skill_id: specificSkillId, attitudinal_skill_ids: attitudinalSkillIds, category_id: categoryId}, function( data ) {

    html = "";
		$.each(data, function(index, activity) {
			html += '<option value="' + activity.id + '">' + activity.description + '</option>';
		});

		activity_field.html(html);
		activity_field.material_select();

	});

}
