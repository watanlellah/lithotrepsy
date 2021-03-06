<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container-fluid">
    <h1>Hello World!</h1>
    <p>Resize the browser window to see the effect.</p>
    <div class="row">
        <div class="col-sm-3" style="background-color:lavender;">.col-sm-3</div>
        <div class="col-sm-6" style="background-color:lightblue">
            <!--[if lt IE 9]><script src="https://cdn.jotfor.ms/js/vendor/flashcanvas.js?3.3.5295" type="text/javascript"></script><![endif]-->
            <script src="https://cdn.jotfor.ms/js/vendor/jquery-1.8.0.min.js?v=3.3.5295" type="text/javascript"></script>
            <script src="https://cdn.jotfor.ms/js/vendor/jSignature.min.noconflict.js?3.3.5295" type="text/javascript"></script>
            <script src="https://cdn.jotfor.ms/js/vendor/jotform.signaturepad.js?3.3.5295" type="text/javascript"></script>
            <script src="https://cdn.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>
            <script src="https://cdn.jotfor.ms/static/jotform.forms.js?3.3.5295" type="text/javascript"></script>
            <script src="https://js.jotform.com/vendor/postMessage.js?3.3.5295" type="text/javascript"></script>
            <script src="https://js.jotform.com/WidgetsServer.js?v=1521829082350" type="text/javascript"></script>
            <script type="text/javascript">
                JotForm.init(function(){
                    JotForm.alterTexts({"alphabetic":"This field can only contain letters","alphanumeric":"This field can only contain letters and numbers.","ccDonationMinLimitError":"Minimum amount is {minAmount} {currency}","ccInvalidCVC":"CVC number is invalid.","ccInvalidExpireDate":"Expire date is invalid.","ccInvalidNumber":"Credit Card Number is invalid.","ccMissingDetails":"Please fill up the Credit Card details.","ccMissingDonation":"Please enter numeric values for donation amount.","ccMissingProduct":"Please select at least one product.","characterLimitError":"Too many Characters.  The limit is","characterMinLimitError":"Too few characters. The minimum is","confirmClearForm":"Are you sure you want to clear the form?","confirmEmail":"E-mail does not match","currency":"This field can only contain currency values.","cyrillic":"This field can only contain cyrillic characters","dateInvalid":"This date is not valid. The date format is {format}","dateInvalidSeparate":"This date is not valid. Enter a valid {element}.","dateLimited":"This date is unavailable.","disallowDecimals":"Please enter a whole number.","email":"Enter a valid e-mail address","fillMask":"Field value must fill mask.","freeEmailError":"Free email accounts are not allowed","generalError":"There are errors on the form. Please fix them before continuing.","generalPageError":"There are errors on this page. Please fix them before continuing.","gradingScoreError":"Score total should only be less than or equal to","incompleteFields":"There are incomplete required fields. Please complete them.","inputCarretErrorA":"Input should not be less than the minimum value:","inputCarretErrorB":"Input should not be greater than the maximum value:","lessThan":"Your score should be less than or equal to","maxDigitsError":"The maximum digits allowed is","maxSelectionsError":"The maximum number of selections allowed is","minSelectionsError":"The minimum required number of selections is","multipleFileUploads_emptyError":"{file} is empty, please select files again without it.","multipleFileUploads_fileLimitError":"Only {fileLimit} file uploads allowed.","multipleFileUploads_minSizeError":"{file} is too small, minimum file size is {minSizeLimit}.","multipleFileUploads_onLeave":"The files are being uploaded, if you leave now the upload will be cancelled.","multipleFileUploads_sizeError":"{file} is too large, maximum file size is {sizeLimit}.","multipleFileUploads_typeError":"{file} has invalid extension. Only {extensions} are allowed.","numeric":"This field can only contain numeric values","pastDatesDisallowed":"Date must not be in the past.","pleaseWait":"Please wait...","required":"This field is required.","requireEveryCell":"Every cell is required.","requireEveryRow":"Every row is required.","requireOne":"At least one field required.","submissionLimit":"Sorry! Only one entry is allowed.  Multiple submissions are disabled for this form.","uploadExtensions":"You can only upload following files:","uploadFilesize":"File size cannot be bigger than:","uploadFilesizemin":"File size cannot be smaller than:","url":"This field can only contain a valid URL","wordLimitError":"Too many words. The limit is","wordMinLimitError":"Too few words.  The minimum is"});
                    JotForm.clearFieldOnHide="disable";
                    JotForm.submitError="jumpToFirstError";
                    /*INIT-END*/
                });

                JotForm.prepareCalculationsOnTheFly([null,{"name":"pickA","qid":"1","text":"Pick a date:-","type":"control_head"},{"name":"submit2","qid":"2","text":"Submit","type":"control_button"},{"name":"personalInformation","qid":"3","text":"Personal information:","type":"control_head"},{"name":"name","qid":"4","text":"Name","type":"control_fullname"},null,null,null,null,{"description":"","name":"address","qid":"9","text":"Address","type":"control_address"},{"description":"","name":"phoneNumber","qid":"10","text":"Phone Number","type":"control_phone"},null,null,null,{"name":"selectA","qid":"14","text":"Select a date:","type":"control_widget"},{"description":"","name":"yourSignature","qid":"15","subLabel":"","text":"your Signature:","type":"control_signature"},{"name":"email","qid":"16","text":"Email","type":"control_widget"},null,{"name":"ourAddress","qid":"18","text":"Our Address:","type":"control_widget"},{"name":"distanceBetween","qid":"19","text":"Distance Between you and M.L.C:","type":"control_widget"},{"name":"yourLocation","qid":"20","text":"Your Location:","type":"control_widget"},{"name":"typeA21","qid":"21","text":"Upload","type":"control_widget"},{"description":"","name":"tellUs22","qid":"22","subLabel":"","text":"Tell us about yourself your doctor diagnose:","type":"control_textarea"}]);
                setTimeout(function() {
                    JotForm.paymentExtrasOnTheFly([null,{"name":"pickA","qid":"1","text":"Pick a date:-","type":"control_head"},{"name":"submit2","qid":"2","text":"Submit","type":"control_button"},{"name":"personalInformation","qid":"3","text":"Personal information:","type":"control_head"},{"name":"name","qid":"4","text":"Name","type":"control_fullname"},null,null,null,null,{"description":"","name":"address","qid":"9","text":"Address","type":"control_address"},{"description":"","name":"phoneNumber","qid":"10","text":"Phone Number","type":"control_phone"},null,null,null,{"name":"selectA","qid":"14","text":"Select a date:","type":"control_widget"},{"description":"","name":"yourSignature","qid":"15","subLabel":"","text":"your Signature:","type":"control_signature"},{"name":"email","qid":"16","text":"Email","type":"control_widget"},null,{"name":"ourAddress","qid":"18","text":"Our Address:","type":"control_widget"},{"name":"distanceBetween","qid":"19","text":"Distance Between you and M.L.C:","type":"control_widget"},{"name":"yourLocation","qid":"20","text":"Your Location:","type":"control_widget"},{"name":"typeA21","qid":"21","text":"Upload","type":"control_widget"},{"description":"","name":"tellUs22","qid":"22","subLabel":"","text":"Tell us about yourself your doctor diagnose:","type":"control_textarea"}]);}, 20);
            </script>
            <link href="https://cdn.jotfor.ms/static/formCss.css?3.3.5295" rel="stylesheet" type="text/css" />
            <link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/nova.css?3.3.5295" />
            <link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.5295" />
            <link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/themes/CSS/566a91c2977cdfcd478b4567.css?"/>
            <style type="text/css">
                .form-label-left{
                    width:150px;
                }
                .form-line{
                    padding-top:12px;
                    padding-bottom:12px;
                }
                .form-label-right{
                    width:150px;
                }
                .form-all{
                    width:690px;
                    color:#555 !important;
                    font-family:"Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", Verdana, sans-serif;
                    font-size:14px;
                }
            </style>

            <style type="text/css" id="form-designer-style">
                /* Injected CSS Code */
                .form-label.form-label-auto { display: block; float: none; text-align: left; width: inherit; } /*PREFERENCES STYLE*/
                .form-all {
                    font-family: Lucida Grande, sans-serif;
                }
                .form-all .qq-upload-button,
                .form-all .form-submit-button,
                .form-all .form-submit-reset,
                .form-all .form-submit-print {
                    font-family: Lucida Grande, sans-serif;
                }
                .form-all .form-pagebreak-back-container,
                .form-all .form-pagebreak-next-container {
                    font-family: Lucida Grande, sans-serif;
                }
                .form-header-group {
                    font-family: Lucida Grande, sans-serif;
                }
                .form-label {
                    font-family: Lucida Grande, sans-serif;
                }

                .form-label.form-label-auto {

                    display: block;
                    float: none;
                    text-align: left;
                    width: 100%;

                }

                .form-line {
                    margin-top: 12px;
                    margin-bottom: 12px;
                }

                .form-all {
                    width: 690px;
                }

                .form-label-left,
                .form-label-right,
                .form-label-left.form-label-auto,
                .form-label-right.form-label-auto {
                    width: 150px;
                }

                .form-all {
                    font-size: 14px
                }
                .form-all .qq-upload-button,
                .form-all .qq-upload-button,
                .form-all .form-submit-button,
                .form-all .form-submit-reset,
                .form-all .form-submit-print {
                    font-size: 14px
                }
                .form-all .form-pagebreak-back-container,
                .form-all .form-pagebreak-next-container {
                    font-size: 14px
                }

                .supernova {
                    background-color: #f5f5f5;
                }
                .supernova body {
                    background: transparent;
                }

                .supernova .form-all, .form-all {
                    background-color: #fff;
                    border: 1px solid transparent;
                }

                .form-all {
                    color: #555;
                }
                .form-header-group .form-header {
                    color: #555;
                }
                .form-header-group .form-subHeader {
                    color: #555;
                }
                .form-label-top,
                .form-label-left,
                .form-label-right,
                .form-html,
                .form-checkbox-item label,
                .form-radio-item label {
                    color: #555;
                }
                .form-sub-label {
                    color: #6f6f6f;
                }

                .form-textbox,
                .form-textarea,
                .form-radio-other-input,
                .form-checkbox-other-input,
                .form-captcha input,
                .form-spinner input {
                    background-color: #fff;
                }

                .form-line-error {
                    overflow: hidden;
                .transition(none; 0.3s; ease;);
                    background-color: #FFF4F4;
                }

                .form-line-error .form-error-message {
                    background-color: #FF3200;
                //width: 150px;
                    clear: both;
                    float: none;
                .form-error-arrow {
                    border-bottom-color: #FF3200;
                }
                }

                .form-line-error input:not(#coupon-input),
                .form-line-error textarea,
                .form-line-error .form-validation-error {
                    border: 1px solid #FF3200;
                .box-shadow(0 0 3px #FF3200);
                }

                .supernova {
                    background-image: none;
                }
                #stage {
                    background-image: none;
                }

                .form-all {
                    background-image: none;
                }

                .form-all {
                    position: relative;
                }
                .form-all:before {
                    content: "";
                    background-image: url("https://www.jotform.com/uploads/hithamsalama/form_files/Logo2.2.5aae4f5797ed50.49037762.png");
                    display: inline-block;
                    height: 50px;
                    position: absolute;
                    background-size: 50px 50px;
                    background-repeat: no-repeat;
                    width: 100%;
                }
                .form-all {
                    margin-top: 60px !important;
                }
                .form-all:before {
                    top: -60px;
                    left: 0;
                    background-position: top left;
                }

                .ie-8 .form-all:before { display: none; }
                .ie-8 {
                    margin-top: auto;
                    margin-top: initial;
                }

                /*PREFERENCES STYLE*//*__INSPECT_SEPERATOR__*/
                /* Injected CSS Code */
            </style>

            <link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/buttons/form-submit-button-metal_brushed.css?3.3.5295"/>
            <form class="jotform-form" action="https://submit.myjotform.com/submit/80762804375562/" method="post" name="form_80762804375562" id="80762804375562" accept-charset="utf-8">
                <input type="hidden" name="formID" value="80762804375562" />
                <div class="form-all">
                    <ul class="form-section page-section">
                        <li id="cid_1" class="form-input-wide" data-type="control_head">
                            <div class="form-header-group ">
                                <div class="header-text httal htvam">
                                    <h2 id="header_1" class="form-header" data-component="header">
                                        Pick a date:-
                                    </h2>
                                    <div id="subHeader_1" class="form-subHeader">
                                        You can register online through our website for Lithoteripsy:-
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li id="cid_3" class="form-input-wide" data-type="control_head">
                            <div class="form-header-group ">
                                <div class="header-text httal htvam">
                                    <h2 id="header_3" class="form-header" data-component="header">
                                        Personal information:
                                    </h2>
                                </div>
                            </div>
                        </li>
                        <li class="form-line jf-required" data-type="control_fullname" id="id_4">
                            <label class="form-label form-label-top form-label-auto" id="label_4" for="first_4">
                                Name
                                <span class="form-required">
            *
          </span>
                            </label>
                            <div id="cid_4" class="form-input-wide jf-required">
                                <div data-wrapper-react="true">
            <span class="form-sub-label-container" style="vertical-align:top;">
              <input type="text" id="first_4" name="q4_name[first]" class="form-textbox validate[required]" size="10" value="" data-component="first" required="" />
              <label class="form-sub-label" for="first_4" id="sublabel_first" style="min-height:13px;"> First Name </label>
            </span>
                                    <span class="form-sub-label-container" style="vertical-align:top;">
              <input type="text" id="last_4" name="q4_name[last]" class="form-textbox validate[required]" size="15" value="" data-component="last" required="" />
              <label class="form-sub-label" for="last_4" id="sublabel_last" style="min-height:13px;"> Last Name </label>
            </span>
                                </div>
                            </div>
                        </li>
                        <li class="form-line jf-required" data-type="control_widget" id="id_16">
                            <label class="form-label form-label-top form-label-auto" id="label_16" for="input_16">
                                Email
                                <span class="form-required">
            *
          </span>
                            </label>
                            <div id="cid_16" class="form-input-wide jf-required">
                                <div style="width:100%;text-align:Left;" data-component="widget-field">
                                    <iframe frameborder="0" scrolling="no" allowtransparency="true" data-type="iframe" class="custom-field-frame" id="customFieldFrame_16" src="" style="border:none;width:300px;height:50px;" data-width="300" data-height="50">
                                    </iframe>
                                    <div class="widget-inputs-wrapper">
                                        <input id="input_16" class="form-hidden form-widget widget-required " type="hidden" name="q16_email" value="" />
                                        <input id="widget_settings_16" class="form-hidden form-widget-settings" type="hidden" value="%5B%7B%22name%22%3A%22msg%22%2C%22value%22%3A%22Please%20enter%20the%20correct%20Email!%20%22%7D%5D" data-version="2" />
                                    </div>
                                    <script type="text/javascript">
                                        setTimeout(function()
                                        {
                                            var _cFieldFrame = document.getElementById("customFieldFrame_16");
                                            _cFieldFrame.onload = function()
                                            {
                                                widgetFrameLoaded(16, {
                                                    "formID": 80762804375562
                                                })
                                            };
                                            _cFieldFrame.src = "//widgets.jotform.io/mailCheck/?qid=16&ref=" + encodeURIComponent(window.location.protocol + "//" + window.location.host);
                                            _cFieldFrame.addClassName("custom-field-frame-rendered");
                                        }, 0);
                                    </script>
                                </div>
                            </div>
                        </li>
                        <li class="form-line" data-type="control_address" id="id_9">
                            <label class="form-label form-label-top form-label-auto" id="label_9" for="input_9_addr_line1"> Address </label>
                            <div id="cid_9" class="form-input-wide">
                                <table summary="" class="form-address-table" cellpadding="0" cellspacing="0">
                                    <tbody>
                                    <tr>
                                        <td colspan="2">
                  <span class="form-sub-label-container" style="vertical-align:top;">
                    <input type="text" id="input_9_addr_line1" name="q9_address[addr_line1]" class="form-textbox form-address-line" value="" data-component="address_line_1" />
                    <label class="form-sub-label" for="input_9_addr_line1" id="sublabel_9_addr_line1" style="min-height:13px;"> Street Address </label>
                  </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                  <span class="form-sub-label-container" style="vertical-align:top;">
                    <input type="text" id="input_9_addr_line2" name="q9_address[addr_line2]" class="form-textbox form-address-line" size="46" value="" data-component="address_line_2" />
                    <label class="form-sub-label" for="input_9_addr_line2" id="sublabel_9_addr_line2" style="min-height:13px;"> Street Address Line 2 </label>
                  </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="50%">
                  <span class="form-sub-label-container" style="vertical-align:top;">
                    <input type="text" id="input_9_city" name="q9_address[city]" class="form-textbox form-address-city" size="21" value="" data-component="city" />
                    <label class="form-sub-label" for="input_9_city" id="sublabel_9_city" style="min-height:13px;"> City </label>
                  </span>
                                        </td>
                                        <td>
                  <span class="form-sub-label-container" style="vertical-align:top;">
                    <input type="text" id="input_9_state" name="q9_address[state]" class="form-textbox form-address-state" size="22" value="" data-component="state" />
                    <label class="form-sub-label" for="input_9_state" id="sublabel_9_state" style="min-height:13px;"> State / Province </label>
                  </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="50%">
                  <span class="form-sub-label-container" style="vertical-align:top;">
                    <input type="text" id="input_9_postal" name="q9_address[postal]" class="form-textbox form-address-postal" size="10" value="" data-component="zip" />
                    <label class="form-sub-label" for="input_9_postal" id="sublabel_9_postal" style="min-height:13px;"> Postal / Zip Code </label>
                  </span>
                                        </td>
                                        <td style="display:none;">
                  <span class="form-sub-label-container" style="vertical-align:top;">
                    <select class="form-dropdown form-address-country" name="q9_address[country]" id="input_9_country" data-component="country">
                      <option value=""> Please Select </option>
                      <option value="United States"> United States </option>
                      <option value="Afghanistan"> Afghanistan </option>
                      <option value="Albania"> Albania </option>
                      <option value="Algeria"> Algeria </option>
                      <option value="American Samoa"> American Samoa </option>
                      <option value="Andorra"> Andorra </option>
                      <option value="Angola"> Angola </option>
                      <option value="Anguilla"> Anguilla </option>
                      <option value="Antigua and Barbuda"> Antigua and Barbuda </option>
                      <option value="Argentina"> Argentina </option>
                      <option value="Armenia"> Armenia </option>
                      <option value="Aruba"> Aruba </option>
                      <option value="Australia"> Australia </option>
                      <option value="Austria"> Austria </option>
                      <option value="Azerbaijan"> Azerbaijan </option>
                      <option value="The Bahamas"> The Bahamas </option>
                      <option value="Bahrain"> Bahrain </option>
                      <option value="Bangladesh"> Bangladesh </option>
                      <option value="Barbados"> Barbados </option>
                      <option value="Belarus"> Belarus </option>
                      <option value="Belgium"> Belgium </option>
                      <option value="Belize"> Belize </option>
                      <option value="Benin"> Benin </option>
                      <option value="Bermuda"> Bermuda </option>
                      <option value="Bhutan"> Bhutan </option>
                      <option value="Bolivia"> Bolivia </option>
                      <option value="Bosnia and Herzegovina"> Bosnia and Herzegovina </option>
                      <option value="Botswana"> Botswana </option>
                      <option value="Brazil"> Brazil </option>
                      <option value="Brunei"> Brunei </option>
                      <option value="Bulgaria"> Bulgaria </option>
                      <option value="Burkina Faso"> Burkina Faso </option>
                      <option value="Burundi"> Burundi </option>
                      <option value="Cambodia"> Cambodia </option>
                      <option value="Cameroon"> Cameroon </option>
                      <option value="Canada"> Canada </option>
                      <option value="Cape Verde"> Cape Verde </option>
                      <option value="Cayman Islands"> Cayman Islands </option>
                      <option value="Central African Republic"> Central African Republic </option>
                      <option value="Chad"> Chad </option>
                      <option value="Chile"> Chile </option>
                      <option value="China"> China </option>
                      <option value="Christmas Island"> Christmas Island </option>
                      <option value="Cocos (Keeling) Islands"> Cocos (Keeling) Islands </option>
                      <option value="Colombia"> Colombia </option>
                      <option value="Comoros"> Comoros </option>
                      <option value="Congo"> Congo </option>
                      <option value="Cook Islands"> Cook Islands </option>
                      <option value="Costa Rica"> Costa Rica </option>
                      <option value="Cote d&#x27;Ivoire"> Cote d&#x27;Ivoire </option>
                      <option value="Croatia"> Croatia </option>
                      <option value="Cuba"> Cuba </option>
                      <option value="Cyprus"> Cyprus </option>
                      <option value="Czech Republic"> Czech Republic </option>
                      <option value="Democratic Republic of the Congo"> Democratic Republic of the Congo </option>
                      <option value="Denmark"> Denmark </option>
                      <option value="Djibouti"> Djibouti </option>
                      <option value="Dominica"> Dominica </option>
                      <option value="Dominican Republic"> Dominican Republic </option>
                      <option value="Ecuador"> Ecuador </option>
                      <option value="Egypt"> Egypt </option>
                      <option value="El Salvador"> El Salvador </option>
                      <option value="Equatorial Guinea"> Equatorial Guinea </option>
                      <option value="Eritrea"> Eritrea </option>
                      <option value="Estonia"> Estonia </option>
                      <option value="Ethiopia"> Ethiopia </option>
                      <option value="Falkland Islands"> Falkland Islands </option>
                      <option value="Faroe Islands"> Faroe Islands </option>
                      <option value="Fiji"> Fiji </option>
                      <option value="Finland"> Finland </option>
                      <option value="France"> France </option>
                      <option value="French Polynesia"> French Polynesia </option>
                      <option value="Gabon"> Gabon </option>
                      <option value="The Gambia"> The Gambia </option>
                      <option value="Georgia"> Georgia </option>
                      <option value="Germany"> Germany </option>
                      <option value="Ghana"> Ghana </option>
                      <option value="Gibraltar"> Gibraltar </option>
                      <option value="Greece"> Greece </option>
                      <option value="Greenland"> Greenland </option>
                      <option value="Grenada"> Grenada </option>
                      <option value="Guadeloupe"> Guadeloupe </option>
                      <option value="Guam"> Guam </option>
                      <option value="Guatemala"> Guatemala </option>
                      <option value="Guernsey"> Guernsey </option>
                      <option value="Guinea"> Guinea </option>
                      <option value="Guinea-Bissau"> Guinea-Bissau </option>
                      <option value="Guyana"> Guyana </option>
                      <option value="Haiti"> Haiti </option>
                      <option value="Honduras"> Honduras </option>
                      <option value="Hong Kong"> Hong Kong </option>
                      <option value="Hungary"> Hungary </option>
                      <option value="Iceland"> Iceland </option>
                      <option value="India"> India </option>
                      <option value="Indonesia"> Indonesia </option>
                      <option value="Iran"> Iran </option>
                      <option value="Iraq"> Iraq </option>
                      <option value="Ireland"> Ireland </option>
                      <option value="Israel"> Israel </option>
                      <option value="Italy"> Italy </option>
                      <option value="Jamaica"> Jamaica </option>
                      <option value="Japan"> Japan </option>
                      <option value="Jersey"> Jersey </option>
                      <option value="Jordan"> Jordan </option>
                      <option value="Kazakhstan"> Kazakhstan </option>
                      <option value="Kenya"> Kenya </option>
                      <option value="Kiribati"> Kiribati </option>
                      <option value="North Korea"> North Korea </option>
                      <option value="South Korea"> South Korea </option>
                      <option value="Kosovo"> Kosovo </option>
                      <option value="Kuwait"> Kuwait </option>
                      <option value="Kyrgyzstan"> Kyrgyzstan </option>
                      <option value="Laos"> Laos </option>
                      <option value="Latvia"> Latvia </option>
                      <option value="Lebanon"> Lebanon </option>
                      <option value="Lesotho"> Lesotho </option>
                      <option value="Liberia"> Liberia </option>
                      <option value="Libya"> Libya </option>
                      <option value="Liechtenstein"> Liechtenstein </option>
                      <option value="Lithuania"> Lithuania </option>
                      <option value="Luxembourg"> Luxembourg </option>
                      <option value="Macau"> Macau </option>
                      <option value="Macedonia"> Macedonia </option>
                      <option value="Madagascar"> Madagascar </option>
                      <option value="Malawi"> Malawi </option>
                      <option value="Malaysia"> Malaysia </option>
                      <option value="Maldives"> Maldives </option>
                      <option value="Mali"> Mali </option>
                      <option value="Malta"> Malta </option>
                      <option value="Marshall Islands"> Marshall Islands </option>
                      <option value="Martinique"> Martinique </option>
                      <option value="Mauritania"> Mauritania </option>
                      <option value="Mauritius"> Mauritius </option>
                      <option value="Mayotte"> Mayotte </option>
                      <option value="Mexico"> Mexico </option>
                      <option value="Micronesia"> Micronesia </option>
                      <option value="Moldova"> Moldova </option>
                      <option value="Monaco"> Monaco </option>
                      <option value="Mongolia"> Mongolia </option>
                      <option value="Montenegro"> Montenegro </option>
                      <option value="Montserrat"> Montserrat </option>
                      <option value="Morocco"> Morocco </option>
                      <option value="Mozambique"> Mozambique </option>
                      <option value="Myanmar"> Myanmar </option>
                      <option value="Nagorno-Karabakh"> Nagorno-Karabakh </option>
                      <option value="Namibia"> Namibia </option>
                      <option value="Nauru"> Nauru </option>
                      <option value="Nepal"> Nepal </option>
                      <option value="Netherlands"> Netherlands </option>
                      <option value="Netherlands Antilles"> Netherlands Antilles </option>
                      <option value="New Caledonia"> New Caledonia </option>
                      <option value="New Zealand"> New Zealand </option>
                      <option value="Nicaragua"> Nicaragua </option>
                      <option value="Niger"> Niger </option>
                      <option value="Nigeria"> Nigeria </option>
                      <option value="Niue"> Niue </option>
                      <option value="Norfolk Island"> Norfolk Island </option>
                      <option value="Turkish Republic of Northern Cyprus"> Turkish Republic of Northern Cyprus </option>
                      <option value="Northern Mariana"> Northern Mariana </option>
                      <option value="Norway"> Norway </option>
                      <option value="Oman"> Oman </option>
                      <option value="Pakistan"> Pakistan </option>
                      <option value="Palau"> Palau </option>
                      <option value="Palestine"> Palestine </option>
                      <option value="Panama"> Panama </option>
                      <option value="Papua New Guinea"> Papua New Guinea </option>
                      <option value="Paraguay"> Paraguay </option>
                      <option value="Peru"> Peru </option>
                      <option value="Philippines"> Philippines </option>
                      <option value="Pitcairn Islands"> Pitcairn Islands </option>
                      <option value="Poland"> Poland </option>
                      <option value="Portugal"> Portugal </option>
                      <option value="Puerto Rico"> Puerto Rico </option>
                      <option value="Qatar"> Qatar </option>
                      <option value="Republic of the Congo"> Republic of the Congo </option>
                      <option value="Romania"> Romania </option>
                      <option value="Russia"> Russia </option>
                      <option value="Rwanda"> Rwanda </option>
                      <option value="Saint Barthelemy"> Saint Barthelemy </option>
                      <option value="Saint Helena"> Saint Helena </option>
                      <option value="Saint Kitts and Nevis"> Saint Kitts and Nevis </option>
                      <option value="Saint Lucia"> Saint Lucia </option>
                      <option value="Saint Martin"> Saint Martin </option>
                      <option value="Saint Pierre and Miquelon"> Saint Pierre and Miquelon </option>
                      <option value="Saint Vincent and the Grenadines"> Saint Vincent and the Grenadines </option>
                      <option value="Samoa"> Samoa </option>
                      <option value="San Marino"> San Marino </option>
                      <option value="Sao Tome and Principe"> Sao Tome and Principe </option>
                      <option value="Saudi Arabia"> Saudi Arabia </option>
                      <option value="Senegal"> Senegal </option>
                      <option value="Serbia"> Serbia </option>
                      <option value="Seychelles"> Seychelles </option>
                      <option value="Sierra Leone"> Sierra Leone </option>
                      <option value="Singapore"> Singapore </option>
                      <option value="Slovakia"> Slovakia </option>
                      <option value="Slovenia"> Slovenia </option>
                      <option value="Solomon Islands"> Solomon Islands </option>
                      <option value="Somalia"> Somalia </option>
                      <option value="Somaliland"> Somaliland </option>
                      <option value="South Africa"> South Africa </option>
                      <option value="South Ossetia"> South Ossetia </option>
                      <option value="South Sudan"> South Sudan </option>
                      <option value="Spain"> Spain </option>
                      <option value="Sri Lanka"> Sri Lanka </option>
                      <option value="Sudan"> Sudan </option>
                      <option value="Suriname"> Suriname </option>
                      <option value="Svalbard"> Svalbard </option>
                      <option value="Swaziland"> Swaziland </option>
                      <option value="Sweden"> Sweden </option>
                      <option value="Switzerland"> Switzerland </option>
                      <option value="Syria"> Syria </option>
                      <option value="Taiwan"> Taiwan </option>
                      <option value="Tajikistan"> Tajikistan </option>
                      <option value="Tanzania"> Tanzania </option>
                      <option value="Thailand"> Thailand </option>
                      <option value="Timor-Leste"> Timor-Leste </option>
                      <option value="Togo"> Togo </option>
                      <option value="Tokelau"> Tokelau </option>
                      <option value="Tonga"> Tonga </option>
                      <option value="Transnistria Pridnestrovie"> Transnistria Pridnestrovie </option>
                      <option value="Trinidad and Tobago"> Trinidad and Tobago </option>
                      <option value="Tristan da Cunha"> Tristan da Cunha </option>
                      <option value="Tunisia"> Tunisia </option>
                      <option value="Turkey"> Turkey </option>
                      <option value="Turkmenistan"> Turkmenistan </option>
                      <option value="Turks and Caicos Islands"> Turks and Caicos Islands </option>
                      <option value="Tuvalu"> Tuvalu </option>
                      <option value="Uganda"> Uganda </option>
                      <option value="Ukraine"> Ukraine </option>
                      <option value="United Arab Emirates"> United Arab Emirates </option>
                      <option value="United Kingdom"> United Kingdom </option>
                      <option value="Uruguay"> Uruguay </option>
                      <option value="Uzbekistan"> Uzbekistan </option>
                      <option value="Vanuatu"> Vanuatu </option>
                      <option value="Vatican City"> Vatican City </option>
                      <option value="Venezuela"> Venezuela </option>
                      <option value="Vietnam"> Vietnam </option>
                      <option value="British Virgin Islands"> British Virgin Islands </option>
                      <option value="Isle of Man"> Isle of Man </option>
                      <option value="US Virgin Islands"> US Virgin Islands </option>
                      <option value="Wallis and Futuna"> Wallis and Futuna </option>
                      <option value="Western Sahara"> Western Sahara </option>
                      <option value="Yemen"> Yemen </option>
                      <option value="Zambia"> Zambia </option>
                      <option value="Zimbabwe"> Zimbabwe </option>
                      <option value="other"> Other </option>
                    </select>
                    <label class="form-sub-label" for="input_9_country" id="sublabel_9_country" style="min-height:13px;"> Country </label>
                  </span>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </li>
                        <li class="form-line" data-type="control_phone" id="id_10">
                            <label class="form-label form-label-top form-label-auto" id="label_10" for="input_10_area"> Phone Number </label>
                            <div id="cid_10" class="form-input-wide">
                                <div data-wrapper-react="true">
            <span class="form-sub-label-container" style="vertical-align:top;">
              <input type="tel" id="input_10_area" name="q10_phoneNumber[area]" class="form-textbox" size="3" value="" data-component="areaCode" />
              <span class="phone-separate">
                 -
              </span>
              <label class="form-sub-label" for="input_10_area" id="sublabel_area" style="min-height:13px;"> Area Code </label>
            </span>
                                    <span class="form-sub-label-container" style="vertical-align:top;">
              <input type="tel" id="input_10_phone" name="q10_phoneNumber[phone]" class="form-textbox" size="8" value="" data-component="phone" />
              <label class="form-sub-label" for="input_10_phone" id="sublabel_phone" style="min-height:13px;"> Phone Number </label>
            </span>
                                </div>
                            </div>
                        </li>
                        <li class="form-line" data-type="control_widget" id="id_14">
                            <label class="form-label form-label-top form-label-auto" id="label_14" for="input_14"> Select a date: </label>
                            <div id="cid_14" class="form-input-wide">
                                <div style="width:100%;text-align:Left;" data-component="widget-field">
                                    <iframe frameborder="0" scrolling="no" allowtransparency="true" data-type="iframe" class="custom-field-frame" id="customFieldFrame_14" src="" style="border:none;width:380px;height:50px;" data-width="380" data-height="50">
                                    </iframe>
                                    <div class="widget-inputs-wrapper">
                                        <input id="input_14" class="form-hidden form-widget  " type="hidden" name="q14_selectA" value="" />
                                        <input id="widget_settings_14" class="form-hidden form-widget-settings" type="hidden" value="%5B%7B%22name%22%3A%22dateFormat%22%2C%22value%22%3A%22y-m-d%22%7D%2C%7B%22name%22%3A%22todayDate%22%2C%22value%22%3A%22Yes%22%7D%5D" data-version="2" />
                                    </div>
                                    <script type="text/javascript">
                                        setTimeout(function()
                                        {
                                            var _cFieldFrame = document.getElementById("customFieldFrame_14");
                                            _cFieldFrame.onload = function()
                                            {
                                                widgetFrameLoaded(14, {
                                                    "formID": 80762804375562
                                                })
                                            };
                                            _cFieldFrame.src = "//widgets.jotform.io/pickers/datepicker.html?qid=14&ref=" + encodeURIComponent(window.location.protocol + "//" + window.location.host);
                                            _cFieldFrame.addClassName("custom-field-frame-rendered");
                                        }, 0);
                                    </script>
                                </div>
                            </div>
                        </li>
                        <li class="form-line" data-type="control_textarea" id="id_22">
                            <label class="form-label form-label-top form-label-auto" id="label_22" for="input_22"> Tell us about yourself your doctor diagnose: </label>
                            <div id="cid_22" class="form-input-wide">
                                <textarea id="input_22" class="form-textarea" name="q22_tellUs22" cols="40" rows="6" data-component="textarea"></textarea>
                            </div>
                        </li>
                        <li class="form-line" data-type="control_widget" id="id_21">
                            <label class="form-label form-label-top" id="label_21" for="input_21"> Upload </label>
                            <div id="cid_21" class="form-input-wide">
                                <div style="width:100%;text-align:Left;" data-component="widget-field">
                                    <iframe frameborder="0" scrolling="no" allowtransparency="true" data-type="iframe" class="custom-field-frame" id="customFieldFrame_21" src="" style="border:none;width:600px;height:400px;" data-width="600" data-height="400">
                                    </iframe>
                                    <div class="widget-inputs-wrapper">
                                        <input id="input_21" class="form-hidden form-widget  " type="hidden" name="q21_typeA21" value="" />
                                        <input id="widget_settings_21" class="form-hidden form-widget-settings" type="hidden" value="%5B%7B%22name%22%3A%22allowedExtensions%22%2C%22value%22%3A%22%20jpg%2C%20png%2C%20gif%22%7D%2C%7B%22name%22%3A%22maxSize%22%2C%22value%22%3A%225000096%22%7D%2C%7B%22name%22%3A%22previewImages%22%2C%22value%22%3A%22No%22%7D%5D" data-version="2" />
                                    </div>
                                    <script type="text/javascript">
                                        setTimeout(function()
                                        {
                                            var _cFieldFrame = document.getElementById("customFieldFrame_21");
                                            _cFieldFrame.onload = function()
                                            {
                                                widgetFrameLoaded(21, {
                                                    "formID": 80762804375562
                                                })
                                            };
                                            _cFieldFrame.src = "//data-widgets.jotform.io/dragDropUpload/?qid=21&ref=" + encodeURIComponent(window.location.protocol + "//" + window.location.host);
                                            _cFieldFrame.addClassName("custom-field-frame-rendered");
                                        }, 0);
                                    </script>
                                </div>
                            </div>
                        </li>
                        <li class="form-line" data-type="control_widget" id="id_18">
                            <label class="form-label form-label-top form-label-auto" id="label_18" for="input_18"> Our Address: </label>
                            <div id="cid_18" class="form-input-wide">
                                <div style="width:100%;text-align:Left;" data-component="widget-field">
                                    <iframe frameborder="0" scrolling="no" allowtransparency="true" data-type="iframe" class="custom-field-frame" id="customFieldFrame_18" src="" style="border:none;width:400px;height:300px;" data-width="400" data-height="300">
                                    </iframe>
                                    <div class="widget-inputs-wrapper">
                                        <input id="input_18" class="form-hidden form-widget  " type="hidden" name="q18_ourAddress" value="" />
                                        <input id="widget_settings_18" class="form-hidden form-widget-settings" type="hidden" value="%5B%7B%22name%22%3A%22lat%22%2C%22value%22%3A%2231.04603%22%7D%2C%7B%22name%22%3A%22lng%22%2C%22value%22%3A%2231.36442%22%7D%2C%7B%22name%22%3A%22zoom%22%2C%22value%22%3A%2213%22%7D%2C%7B%22name%22%3A%22apiKey%22%2C%22value%22%3A%22AIzaSyB1RDWF1E5GHTmKlvN0dWPmiv5v2TFn9EQ%22%7D%5D" data-version="2" />
                                    </div>
                                    <script type="text/javascript">
                                        setTimeout(function()
                                        {
                                            var _cFieldFrame = document.getElementById("customFieldFrame_18");
                                            _cFieldFrame.onload = function()
                                            {
                                                widgetFrameLoaded(18, {
                                                    "formID": 80762804375562
                                                })
                                            };
                                            _cFieldFrame.src = "//widgets.jotform.io/mapAddress/?qid=18&ref=" + encodeURIComponent(window.location.protocol + "//" + window.location.host);
                                            _cFieldFrame.addClassName("custom-field-frame-rendered");
                                        }, 0);
                                    </script>
                                </div>
                            </div>
                        </li>
                        <li class="form-line" data-type="control_widget" id="id_20">
                            <label class="form-label form-label-top" id="label_20" for="input_20"> Your Location: </label>
                            <div id="cid_20" class="form-input-wide">
                                <div style="width:100%;text-align:Left;" data-component="widget-field">
                                    <iframe frameborder="0" scrolling="no" allowtransparency="true" data-type="iframe" class="custom-field-frame" id="customFieldFrame_20" src="" style="border:none;width:610px;height:560px;" data-width="610" data-height="560">
                                    </iframe>
                                    <div class="widget-inputs-wrapper">
                                        <input id="input_20" class="form-hidden form-widget  " type="hidden" name="q20_yourLocation" value="" />
                                        <input id="widget_settings_20" class="form-hidden form-widget-settings" type="hidden" value="%5B%7B%22name%22%3A%22theme%22%2C%22value%22%3A%22black%22%7D%2C%7B%22name%22%3A%22country%22%2C%22value%22%3A%22All%22%7D%5D" data-version="2" />
                                    </div>
                                    <script type="text/javascript">
                                        setTimeout(function()
                                        {
                                            var _cFieldFrame = document.getElementById("customFieldFrame_20");
                                            _cFieldFrame.onload = function()
                                            {
                                                widgetFrameLoaded(20, {
                                                    "formID": 80762804375562
                                                })
                                            };
                                            _cFieldFrame.src = "//widgets.jotform.io/mapLocator/?qid=20&ref=" + encodeURIComponent(window.location.protocol + "//" + window.location.host);
                                            _cFieldFrame.addClassName("custom-field-frame-rendered");
                                        }, 0);
                                    </script>
                                </div>
                            </div>
                        </li>
                        <li class="form-line" data-type="control_widget" id="id_19">
                            <label class="form-label form-label-top form-label-auto" id="label_19" for="input_19"> Distance Between you and M.L.C: </label>
                            <div id="cid_19" class="form-input-wide">
                                <div style="width:100%;text-align:Left;" data-component="widget-field">
                                    <iframe frameborder="0" scrolling="no" allowtransparency="true" data-type="iframe" class="custom-field-frame" id="customFieldFrame_19" src="" style="border:none;width:300px;height:200px;" data-width="300" data-height="200">
                                    </iframe>
                                    <div class="widget-inputs-wrapper">
                                        <input id="input_19" class="form-hidden form-widget  " type="hidden" name="q19_distanceBetween" value="" />
                                        <input id="widget_settings_19" class="form-hidden form-widget-settings" type="hidden" value="%5B%7B%22name%22%3A%22defaultDistanceUnits%22%2C%22value%22%3A%22kilometers%22%7D%2C%7B%22name%22%3A%22isAutocalculate%22%2C%22value%22%3A%22true%22%7D%2C%7B%22name%22%3A%22isUnitsHidden%22%2C%22value%22%3A%22false%22%7D%2C%7B%22name%22%3A%22labelFrom%22%2C%22value%22%3A%22From%22%7D%2C%7B%22name%22%3A%22labelTo%22%2C%22value%22%3A%22To%22%7D%2C%7B%22name%22%3A%22labelDistance%22%2C%22value%22%3A%22Distance%22%7D%2C%7B%22name%22%3A%22labelDuration%22%2C%22value%22%3A%22Duration%22%7D%2C%7B%22name%22%3A%22apiKey%22%2C%22value%22%3A%22AIzaSyDCV0tMiAslPk5Yap7CJhLG4Jglg27boFY%22%7D%5D" data-version="2" />
                                    </div>
                                    <script type="text/javascript">
                                        setTimeout(function()
                                        {
                                            var _cFieldFrame = document.getElementById("customFieldFrame_19");
                                            _cFieldFrame.onload = function()
                                            {
                                                widgetFrameLoaded(19, {
                                                    "formID": 80762804375562
                                                })
                                            };
                                            _cFieldFrame.src = "//data-widgets.jotform.io/drivingDistance/?qid=19&ref=" + encodeURIComponent(window.location.protocol + "//" + window.location.host);
                                            _cFieldFrame.addClassName("custom-field-frame-rendered");
                                        }, 0);
                                    </script>
                                </div>
                            </div>
                        </li>
                        <li class="form-line" data-type="control_signature" id="id_15">
                            <label class="form-label form-label-top form-label-auto" id="label_15" for="input_15"> your Signature: </label>
                            <div id="cid_15" class="form-input-wide">
                                <div data-wrapper-react="true">
                                    <div id="signature_pad_15" class="signature-pad-wrapper" style="width:402px;height:202px;">
                                        <div data-wrapper-react="true">
                                            <!--[if IE 7]>
                                              <script type="text/javascript" src="/js/vendor/json2.js"></script>
                                            <![endif]-->
                                        </div>
                                        <div class="signature-line signature-wrapper" data-component="signature" style="width:402px;height:202px;">
                                            <div id="sig_pad_15" data-width="400" data-height="200" data-id="15" data-required="false" class="pad">
                                            </div>
                                            <input type="hidden" name="q15_yourSignature" class="output4" id="input_15" />
                                        </div>
                                        <span class="clear-pad-btn clear-pad">
                Clear
              </span>
                                    </div>
                                    <div data-wrapper-react="true">
                                        <script type="text/javascript">
                                            window.signatureForm = true
                                        </script>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="form-line" data-type="control_button" id="id_2">
                            <div id="cid_2" class="form-input-wide">
                                <div style="text-align:center;" class="form-buttons-wrapper">
                                    <button id="input_2" type="submit" class="form-submit-button form-submit-button-metal_brushed" data-component="button">
                                        Submit
                                    </button>
                                </div>
                            </div>
                        </li>
                        <li style="display:none">
                            Should be Empty:
                            <input type="text" name="website" value="" />
                        </li>
                    </ul>
                </div>
                <script>
                    JotForm.showJotFormPowered = "new_footer";
                </script>
                <input type="hidden" id="simple_spc" name="simple_spc" value="80762804375562" />
                <script type="text/javascript">
                    document.getElementById("si" + "mple" + "_spc").value = "80762804375562-80762804375562";
                </script>
                <script src="https://cdn.jotfor.ms/js/widgetResizer.js?REV=3.3.5295" type="text/javascript"></script>

            </form>
            <script type="text/javascript">JotForm.ownerView=true;</script>
        </div>

    </div>
</div>

</body>
</html>
