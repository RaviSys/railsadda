$(function() {
  var skills = 'skills_autocomplete.json';
  availableSkills = [];
  $.getJSON(skills, function(data){
    $.each(data, function(index, value){
      availableSkills.push(value);
    });
  });
  $('#skills').autocomplete({
    source: availableSkills
  });
});
