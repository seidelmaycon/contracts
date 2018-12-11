jQuery(function() {
  var categories;
  categories = $('#contract_category_id').html();
  return $('#contract_vendor_id').change(function() {
    var vendor, options;
    vendor = $('#contract_vendor_id :selected').text();
    options = $(categories).filter("optgroup[label=" + vendor + "]").html();
    if (options) {
      $("#category_field").removeClass("hidden");
      return $('#contract_category_id').html(options);
    } else {
      return $('#contract_category_id').empty();
    }
  });
});