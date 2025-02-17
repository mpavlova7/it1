﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewListing.aspx.cs" Inherits="CottageMania.AddNewListing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type='text/css'>
        .ribbon-wrapper-under-offer {
            background-color: #c0392b;
        }

        .under-offer {
            padding-top: 10px;
        }

        .ribbon-wrapper-open-home {
            background-color: #2c3e50;
        }

        .open-home {
            padding-top: 10px;
        }

        .ribbon-wrapper-hot-offer {
            background-color: #e74c3c;
        }

        .hot-offer {
            padding-top: 10px;
        }

        .ribbon-wrapper-new-offer {
            background-color: #2c3e50;
        }

        .new-offer {
            padding-top: 10px;
        }

        .top-user-menu-wrapper {
            background: #f5f5f5;
            color: #1a171b;
        }

            .top-user-menu-wrapper a {
                color: #1a171b;
            }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div id="wrapper" class="fullwhite">
        <div class=""></div>

        <div id="breadcrumbs_container">
            <div class="breadcrumbs ">
                <a href="http://wpestatetheme.org">Home</a><span class="bread_arrows">&raquo;</span><span class="bread_selected">New Property</span>
            </div>
        </div>
 <div class="row " id="main">
    


        <!-- begin content--> 
        <div class="noborder twelve columns alpha noshadow" id="post"> 
            <div class="inside_post inside_no_border submit_area">
                                
    <div class="user_tab_menu">
        <a class="" href="http://wpestatetheme.org/my-profile/"> My Profile</a>
     
                <a class="" href="http://wpestatetheme.org/dashboard/"> My Properties list</a>
                
                <a class="user_tab_active" href="http://wpestatetheme.org/new-property/"> Add new Property</a>
                
        <a class="" href="http://wpestatetheme.org/favorite-properties/"> Favorites</a>
        <a title="Logout" href="http://wpestatetheme.org/wp-login.php?action=logout&amp;_wpnonce=f0e864a08b">Log Out</a>
    </div>


 


   
                





<form class="add-estate" enctype="multipart/form-data" action="" method="post" name="new_post" id="new_post">
     
               
                   
    
    
     <div class="eight columns alpha nomargin">
         
           
               <div class="submit_container_header mobile">Membership</div>
               <div class="submit_container mobile"><strong>Your Package: PRO AGENCY</strong><br> <p class="full_form-nob">200 Listings - 184 remaining </p> <p class="full_form-nob"> <span id="normal_list_no">50 Featured listings</span> - <span id="featured_list_no">36</span> remaining </p></div>             
     
         
         
           
        
            <div class="submit_container_header mobile">'.__('Featured submission','wpestate').'</div>
            <div class="submit_container mobile">            
                    <p class="meta-options full_form-nob"> 
                       
                       <input type="hidden" value="" name="prop_featured">
                       <input type="checkbox" value="1" name="prop_featured" id="prop_featured">                           
                       <label id="prop_featured_label" for="prop_featured">'.__('Make this property featured?','wpestate').'</label>
                    </p> 
            </div>
         
          
            
            
            
            
            
            <div class="submit_container_header">Property Description &amp; Price</div>
            <div class="submit_container">
                <p class="full_form">
                   <label for="title">*Title (mandatory) </label>
                   <input type="text" name="title" size="20" value="" id="title">
                </p>

                <p class="full_form">
                   <label for="description">*Description (mandatory)</label>
                   <textarea rows="6" cols="50" name="description" tabindex="3" id="description"></textarea>
                </p>

                 <p class="half_form">
                   <label for="property_price"> Price in $ (only numbers)  </label>
                   <input type="text" value="" name="property_price" size="40" id="property_price">
                 </p>

                <p class="half_form half_form_last">
                   <label for="property_label">After Price Label (for example "per month")</label>
                   <input type="text" value="" name="property_label" size="40" id="property_label">
                </p>      
            </div> 
            
         
              
            <div class="submit_container_header">Listing Images</div>
            <div class="submit_container">
                 

                <div id="files_area">
                    <p class="full_form">
                        <label for="file">*Images (mandatory, recommended size at least 1600px x 700px):</label>
                        <input type="file" name="upload_attachment[]" value="add new image" class="img-upload">      
                    </p> 
                </div>
                <p class="full_form">
                   <span id="add-new-image">add new image</span>
                </p>
            </div>  
            
            
            
            
            
            
            
            <div class="submit_container_header">Listing Location</div>
            <div class="submit_container">
                <p class="half_form">
                    <label for="property_address">*Address (mandatory) </label>
                    <textarea cols="42" rows="3" name="property_address" size="40" id="property_address" type="text"></textarea>
                </p>
                
                <p class="half_form half_form_last">
                    <label for="property_country">Country </label>
                    <select class="select-submit2" name="property_country" style="width: 237px;" id="property_country"><option value="Afghanistan">Afghanistan</option><option value="Albania">Albania</option><option value="Algeria">Algeria</option><option value="American Samoa">American Samoa</option><option value="Andorra">Andorra</option><option value="Angola">Angola</option><option value="Anguilla">Anguilla</option><option value="Antarctica">Antarctica</option><option value="Antigua and Barbuda">Antigua and Barbuda</option><option value="Argentina">Argentina</option><option value="Armenia">Armenia</option><option value="Aruba">Aruba</option><option value="Australia">Australia</option><option value="Austria">Austria</option><option value="Azerbaijan">Azerbaijan</option><option value="Bahamas">Bahamas</option><option value="Bahrain">Bahrain</option><option value="Bangladesh">Bangladesh</option><option value="Barbados">Barbados</option><option value="Belarus">Belarus</option><option value="Belgium">Belgium</option><option value="Belize">Belize</option><option value="Benin">Benin</option><option value="Bermuda">Bermuda</option><option value="Bhutan">Bhutan</option><option value="Bolivia">Bolivia</option><option value="Bosnia and Herzegowina">Bosnia and Herzegowina</option><option value="Botswana">Botswana</option><option value="Bouvet Island">Bouvet Island</option><option value="Brazil">Brazil</option><option value="British Indian Ocean Territory">British Indian Ocean Territory</option><option value="Brunei Darussalam">Brunei Darussalam</option><option value="Bulgaria">Bulgaria</option><option value="Burkina Faso">Burkina Faso</option><option value="Burundi">Burundi</option><option value="Cambodia">Cambodia</option><option value="Cameroon">Cameroon</option><option value="Canada">Canada</option><option value="Cape Verde">Cape Verde</option><option value="Cayman Islands">Cayman Islands</option><option value="Central African Republic">Central African Republic</option><option value="Chad">Chad</option><option value="Chile">Chile</option><option value="China">China</option><option value="Christmas Island">Christmas Island</option><option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option><option value="Colombia">Colombia</option><option value="Comoros">Comoros</option><option value="Congo">Congo</option><option value="Congo, the Democratic Republic of the">Congo, the Democratic Republic of the</option><option value="Cook Islands">Cook Islands</option><option value="Costa Rica">Costa Rica</option><option value="Cote d'Ivoire">Cote d'Ivoire</option><option value="Croatia (Hrvatska)">Croatia (Hrvatska)</option><option value="Cuba">Cuba</option><option value="Cyprus">Cyprus</option><option value="Czech Republic">Czech Republic</option><option value="Denmark">Denmark</option><option value="Djibouti">Djibouti</option><option value="Dominica">Dominica</option><option value="Dominican Republic">Dominican Republic</option><option value="East Timor">East Timor</option><option value="Ecuador">Ecuador</option><option value="Egypt">Egypt</option><option value="El Salvador">El Salvador</option><option value="Equatorial Guinea">Equatorial Guinea</option><option value="Eritrea">Eritrea</option><option value="Estonia">Estonia</option><option value="Ethiopia">Ethiopia</option><option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option><option value="Faroe Islands">Faroe Islands</option><option value="Fiji">Fiji</option><option value="Finland">Finland</option><option value="France">France</option><option value="France Metropolitan">France Metropolitan</option><option value="French Guiana">French Guiana</option><option value="French Polynesia">French Polynesia</option><option value="French Southern Territories">French Southern Territories</option><option value="Gabon">Gabon</option><option value="Gambia">Gambia</option><option value="Georgia">Georgia</option><option value="Germany">Germany</option><option value="Ghana">Ghana</option><option value="Gibraltar">Gibraltar</option><option value="Greece">Greece</option><option value="Greenland">Greenland</option><option value="Grenada">Grenada</option><option value="Guadeloupe">Guadeloupe</option><option value="Guam">Guam</option><option value="Guatemala">Guatemala</option><option value="Guinea">Guinea</option><option value="Guinea-Bissau">Guinea-Bissau</option><option value="Guyana">Guyana</option><option value="Haiti">Haiti</option><option value="Heard and Mc Donald Islands">Heard and Mc Donald Islands</option><option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option><option value="Honduras">Honduras</option><option value="Hong Kong">Hong Kong</option><option value="Hungary">Hungary</option><option value="Iceland">Iceland</option><option value="India">India</option><option value="Indonesia">Indonesia</option><option value="Iran (Islamic Republic of)">Iran (Islamic Republic of)</option><option value="Iraq">Iraq</option><option value="Ireland">Ireland</option><option value="Israel">Israel</option><option value="Italy">Italy</option><option value="Jamaica">Jamaica</option><option value="Japan">Japan</option><option value="Jordan">Jordan</option><option value="Kazakhstan">Kazakhstan</option><option value="Kenya">Kenya</option><option value="Kiribati">Kiribati</option><option value="Korea, Democratic People's Republic of">Korea, Democratic People's Republic of</option><option value="Korea, Republic of">Korea, Republic of</option><option value="Kuwait">Kuwait</option><option value="Kyrgyzstan">Kyrgyzstan</option><option value="Lao, People's Democratic Republic">Lao, People's Democratic Republic</option><option value="Latvia">Latvia</option><option value="Lebanon">Lebanon</option><option value="Lesotho">Lesotho</option><option value="Liberia">Liberia</option><option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option><option value="Liechtenstein">Liechtenstein</option><option value="Lithuania">Lithuania</option><option value="Luxembourg">Luxembourg</option><option value="Macau">Macau</option><option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav Republic of</option><option value="Madagascar">Madagascar</option><option value="Malawi">Malawi</option><option value="Malaysia">Malaysia</option><option value="Maldives">Maldives</option><option value="Mali">Mali</option><option value="Malta">Malta</option><option value="Marshall Islands">Marshall Islands</option><option value="Martinique">Martinique</option><option value="Mauritania">Mauritania</option><option value="Mauritius">Mauritius</option><option value="Mayotte">Mayotte</option><option value="Mexico">Mexico</option><option value="Micronesia, Federated States of">Micronesia, Federated States of</option><option value="Moldova, Republic of">Moldova, Republic of</option><option value="Monaco">Monaco</option><option value="Mongolia">Mongolia</option><option value="Montserrat">Montserrat</option><option value="Morocco">Morocco</option><option value="Mozambique">Mozambique</option><option value="Myanmar">Myanmar</option><option value="Namibia">Namibia</option><option value="Nauru">Nauru</option><option value="Nepal">Nepal</option><option value="Netherlands">Netherlands</option><option value="Netherlands Antilles">Netherlands Antilles</option><option value="New Caledonia">New Caledonia</option><option value="New Zealand">New Zealand</option><option value="Nicaragua">Nicaragua</option><option value="Niger">Niger</option><option value="Nigeria">Nigeria</option><option value="Niue">Niue</option><option value="Norfolk Island">Norfolk Island</option><option value="Northern Mariana Islands">Northern Mariana Islands</option><option value="Norway">Norway</option><option value="Oman">Oman</option><option value="Pakistan">Pakistan</option><option value="Palau">Palau</option><option value="Panama">Panama</option><option value="Papua New Guinea">Papua New Guinea</option><option value="Paraguay">Paraguay</option><option value="Peru">Peru</option><option value="Philippines">Philippines</option><option value="Pitcairn">Pitcairn</option><option value="Poland">Poland</option><option value="Portugal">Portugal</option><option value="Puerto Rico">Puerto Rico</option><option value="Qatar">Qatar</option><option value="Reunion">Reunion</option><option value="Romania">Romania</option><option value="Russian Federation">Russian Federation</option><option value="Rwanda">Rwanda</option><option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option><option value="Saint Lucia">Saint Lucia</option><option value="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</option><option value="Samoa">Samoa</option><option value="San Marino">San Marino</option><option value="Sao Tome and Principe">Sao Tome and Principe</option><option value="Saudi Arabia">Saudi Arabia</option><option value="Senegal">Senegal</option><option value="Seychelles">Seychelles</option><option value="Sierra Leone">Sierra Leone</option><option value="Singapore">Singapore</option><option value="Slovakia (Slovak Republic)">Slovakia (Slovak Republic)</option><option value="Slovenia">Slovenia</option><option value="Solomon Islands">Solomon Islands</option><option value="Somalia">Somalia</option><option value="South Africa">South Africa</option><option value="South Georgia and the South Sandwich Islands">South Georgia and the South Sandwich Islands</option><option value="Spain">Spain</option><option value="Sri Lanka">Sri Lanka</option><option value="St. Helena">St. Helena</option><option value="St. Pierre and Miquelon">St. Pierre and Miquelon</option><option value="Sudan">Sudan</option><option value="Suriname">Suriname</option><option value="Svalbard and Jan Mayen Islands">Svalbard and Jan Mayen Islands</option><option value="Swaziland">Swaziland</option><option value="Sweden">Sweden</option><option value="Switzerland">Switzerland</option><option value="Syrian Arab Republic">Syrian Arab Republic</option><option value="Taiwan, Province of China">Taiwan, Province of China</option><option value="Tajikistan">Tajikistan</option><option value="Tanzania, United Republic of">Tanzania, United Republic of</option><option value="Thailand">Thailand</option><option value="Togo">Togo</option><option value="Tokelau">Tokelau</option><option value="Tonga">Tonga</option><option value="Trinidad and Tobago">Trinidad and Tobago</option><option value="Tunisia">Tunisia</option><option value="Turkey">Turkey</option><option value="Turkmenistan">Turkmenistan</option><option value="Turks and Caicos Islands">Turks and Caicos Islands</option><option value="Tuvalu">Tuvalu</option><option value="Uganda">Uganda</option><option value="Ukraine">Ukraine</option><option value="United Arab Emirates">United Arab Emirates</option><option value="United Kingdom">United Kingdom</option><option selected="selected" value="United States">United States</option><option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option><option value="Uruguay">Uruguay</option><option value="Uzbekistan">Uzbekistan</option><option value="Vanuatu">Vanuatu</option><option value="Venezuela">Venezuela</option><option value="Vietnam">Vietnam</option><option value="Virgin Islands (British)">Virgin Islands (British)</option><option value="Virgin Islands (U.S.)">Virgin Islands (U.S.)</option><option value="Wallis and Futuna Islands">Wallis and Futuna Islands</option><option value="Western Sahara">Western Sahara</option><option value="Yemen">Yemen</option><option value="Yugoslavia">Yugoslavia</option><option value="Zambia">Zambia</option><option value="Zimbabwe">Zimbabwe</option></select>                </p>
                
                <p class="half_form half_form_last">
                    <label for="property_state">State </label>
                    <input type="text" value="" name="property_state" size="40" id="property_state">
                </p>
                
          
                    <div class="advanced_city_div half_form">
                    <label for="property_city">City</label>
             
                                         
                        <div class="cd-dropdown"><span style="z-index: 1005;">All Cities</span><input type="hidden" value="all" name="property_city"><ul style="height: 0px;"><li data-value="all" data-city="undefined" style="z-index: 1004; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transform: none; transition: all 300ms ease 0s;"><span>All Cities</span></li><li data-value="all" data-city="undefined" style="z-index: 1003; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transform: none; transition: all 300ms ease 0s;"><span>all</span></li><li data-value="Jersey City" data-city="undefined" style="z-index: 1002; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transform: none; transition: all 300ms ease 0s;"><span>Jersey City</span></li><li data-value="London" data-city="undefined" style="z-index: 1001; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transform: none; width: 266px; transition: all 300ms ease 0s;"><span>London</span></li><li data-value="New York" data-city="undefined" style="z-index: 1000; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transform: none; width: 266px; transition: all 300ms ease 0s;"><span>New York</span></li></ul></div>
                    </div>
            
       
                    <div class="advanced_area_div half_form half_form_last">
                    <label for="property_area">Area / Neighborhood</label>
              
                                         <div class="cd-dropdown"><span style="z-index: 1011;">All Areas</span><input type="hidden" value="all" name="property_area"><ul style="height: 0px;"><li data-value="all" data-city="*" style="z-index: 1010; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transform: none; transition: all 300ms ease 0s;"><span>All Areas</span></li><li data-value="all" data-city="" style="z-index: 1009; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transform: none; transition: all 300ms ease 0s;"><span>all</span></li><li data-value="East Harlem" data-city="New York" style="z-index: 1008; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transform: none; transition: all 300ms ease 0s;"><span>East Harlem</span></li><li data-value="Greenville" data-city="Jersey City" style="z-index: 1007; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transform: none; transition: all 300ms ease 0s;"><span>Greenville</span></li><li data-value="Manhattan" data-city="New York" style="z-index: 1006; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transform: none; transition: all 300ms ease 0s;"><span>Manhattan</span></li><li data-value="Northern Brooklyn" data-city="New York" style="z-index: 1005; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transform: none; transition: all 300ms ease 0s;"><span>Northern Brooklyn</span></li><li data-value="Queens" data-city="New York" style="z-index: 1004; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transform: none; transition: all 300ms ease 0s;"><span>Queens</span></li><li data-value="Southwark" data-city="London" style="z-index: 1003; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transform: none; transition: all 300ms ease 0s;"><span>Southwark</span></li><li data-value="The Heights" data-city="Jersey City" style="z-index: 1002; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transform: none; transition: all 300ms ease 0s;"><span>The Heights</span></li><li data-value="Upper East Side" data-city="New York" style="z-index: 1001; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transform: none; width: 266px; transition: all 300ms ease 0s;"><span>Upper East Side</span></li><li data-value="West Side" data-city="New York" style="z-index: 1000; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transform: none; width: 266px; transition: all 300ms ease 0s;"><span>West Side</span></li></ul></div>
                </div> 
         
 
                <p class="half_form">
                    <label for="property_zip">Zip </label>
                    <input type="text" value="" name="property_zip" size="40" id="property_zip">
                </p>
                
                <p class="half_form half_form_last">
                    <label for="property_county">County </label>
                    <input type="text" value="" name="property_county" size="40" id="property_county">
                </p>
                
                <p style="float:left;" class="full_form">
                    <span class="btn vernil small" id="google_capture">Place Pin with Property Address</span>
                </p>
                
                <p class="full_form">
                    </p><div id="googleMapsubmit" style="position: relative; background-color: rgb(229, 227, 223); overflow: hidden;"><div style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;" class="gm-style"><div style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;"><div style="position: absolute; left: 0px; top: 0px; z-index: 1; width: 100%; cursor: url(&quot;http://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;), default;"><div style="position: absolute; left: 0px; top: 0px; width: 100%; z-index: 200;"><div style="position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;"></div></div><div style="position: absolute; left: 0px; top: 0px; width: 100%; z-index: 201;"><div style="position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;"></div><div style="position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;"><div style="position: absolute; left: 0px; top: 0px; z-index: -1;"><div style="position: absolute; left: 0px; top: 0px; z-index: 1;"><div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 169px; top: 38px;"><canvas draggable="false" style="-moz-user-select: none; position: absolute; left: 0px; top: 0px; height: 256px; width: 256px;" height="320" width="320"></canvas></div><div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -87px; top: 38px;"></div><div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 169px; top: -218px;"></div><div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 169px; top: 294px;"></div><div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 425px; top: 38px;"></div><div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -87px; top: -218px;"></div><div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -87px; top: 294px;"></div><div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 425px; top: -218px;"></div><div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 425px; top: 294px;"></div></div></div></div></div><div style="position: absolute; left: 0px; top: 0px; width: 100%; z-index: 202;"><div style="position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;"></div><div style="position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;"></div><div style="position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;"><div style="cursor: default; width: 229px; height: 62px; position: absolute; left: 175px; top: 24px; z-index: 24;"><div style="position: absolute; left: 0px; top: 0px;"><div style="width: 0px; height: 0px; border-right: 10px solid transparent; border-left: 10px solid transparent; border-top: 24px solid rgba(0, 0, 0, 0.1); position: absolute; left: 105px; top: 62px;"></div><div style="position: absolute; left: 0px; top: 0px; background-color: rgba(0, 0, 0, 0.2); border-radius: 2px; box-shadow: 0px 1px 4px -1px rgba(0, 0, 0, 0.3); width: 229px; height: 62px;"></div><div style="border-top-width: 24px; position: absolute; left: 105px; top: 59px;"><div style="position: absolute; overflow: hidden; left: -6px; top: -1px; width: 16px; height: 30px;"><div style="position: absolute; left: 6px; background-color: rgb(255, 255, 255); transform: skewX(22.6deg); transform-origin: 0px 0px 0px; height: 24px; width: 10px; box-shadow: 0px 1px 6px rgba(0, 0, 0, 0.6);"></div></div><div style="position: absolute; overflow: hidden; top: -1px; left: 10px; width: 16px; height: 30px;"><div style="position: absolute; left: 0px; background-color: rgb(255, 255, 255); transform: skewX(-22.6deg); transform-origin: 10px 0px 0px; height: 24px; width: 10px; box-shadow: 0px 1px 6px rgba(0, 0, 0, 0.6);"></div></div></div><div style="position: absolute; left: 1px; top: 1px; border-radius: 2px; background-color: rgb(255, 255, 255); width: 227px; height: 60px;"></div></div><div style="position: absolute; left: 12px; top: 9px; overflow: auto; width: 185px; height: 44px;" class="gm-style-iw"><div style="overflow: auto;" class="">Latitude: 40.781711<br>Longitude: -73.95592699999997</div></div><div style="width: 13px; height: 13px; overflow: hidden; position: absolute; opacity: 0.7; right: 12px; top: 12px; z-index: 10000; cursor: pointer;"><img style="position: absolute; left: -2px; top: -336px; width: 59px; height: 492px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="http://maps.gstatic.com/mapfiles/api-3/images/mapcnt3.png" draggable="false"></div></div></div></div><div style="position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;"><div style="position: absolute; left: 0px; top: 0px; z-index: 0;"><div style="position: absolute; left: 0px; top: 0px; z-index: 1;"><div style="width: 256px; height: 256px; position: absolute; left: 169px; top: 38px;"></div><div style="width: 256px; height: 256px; position: absolute; left: -87px; top: 38px;"></div><div style="width: 256px; height: 256px; position: absolute; left: 169px; top: -218px;"></div><div style="width: 256px; height: 256px; position: absolute; left: 169px; top: 294px;"></div><div style="width: 256px; height: 256px; position: absolute; left: 425px; top: 38px;"></div><div style="width: 256px; height: 256px; position: absolute; left: -87px; top: -218px;"></div><div style="width: 256px; height: 256px; position: absolute; left: -87px; top: 294px;"></div><div style="width: 256px; height: 256px; position: absolute; left: 425px; top: -218px;"></div><div style="width: 256px; height: 256px; position: absolute; left: 425px; top: 294px;"></div></div></div></div><div style="position: absolute; z-index: 0; left: 0px; top: 0px;"><div style="overflow: hidden; width: 578px; height: 300px;"><img style="width: 578px; height: 300px;" src="http://maps.googleapis.com/maps/api/js/StaticMapService.GetMapImage?1m2&amp;1i19767470&amp;2i25214388&amp;2e1&amp;3u17&amp;4m3&amp;1u1156&amp;2u600&amp;3e2&amp;5m4&amp;1e0&amp;5sen-US&amp;6sus&amp;10b1&amp;token=36353"></div></div><div style="position: absolute; left: 0px; top: 0px; z-index: 0;"><div style="position: absolute; left: 0px; top: 0px; z-index: 1;"><div style="width: 256px; height: 256px; position: absolute; left: 169px; top: 294px; opacity: 1; transition: opacity 200ms ease-out 0s;"><img style="width: 256px; height: 256px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="http://mt1.googleapis.com/vt?lyrs=m@255133882&amp;src=apiv3&amp;hl=en-US&amp;x=38609&amp;y=49248&amp;z=17&amp;scale=2&amp;style=47,37%7Csmartmaps" draggable="false"></div><div style="width: 256px; height: 256px; position: absolute; left: 169px; top: -218px; opacity: 1; transition: opacity 200ms ease-out 0s;"><img style="width: 256px; height: 256px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="http://mt1.googleapis.com/vt?lyrs=m@255131682&amp;src=apiv3&amp;hl=en-US&amp;x=38609&amp;y=49246&amp;z=17&amp;scale=2&amp;style=47,37%7Csmartmaps" draggable="false"></div><div style="width: 256px; height: 256px; position: absolute; left: -87px; top: 38px; opacity: 1; transition: opacity 200ms ease-out 0s;"><img style="width: 256px; height: 256px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="http://mt0.googleapis.com/vt?lyrs=m@255132535&amp;src=apiv3&amp;hl=en-US&amp;x=38608&amp;y=49247&amp;z=17&amp;scale=2&amp;style=47,37%7Csmartmaps" draggable="false"></div><div style="width: 256px; height: 256px; position: absolute; left: 169px; top: 38px; opacity: 1; transition: opacity 200ms ease-out 0s;"><img style="width: 256px; height: 256px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="http://mt1.googleapis.com/vt?lyrs=m@255133634&amp;src=apiv3&amp;hl=en-US&amp;x=38609&amp;y=49247&amp;z=17&amp;scale=2&amp;style=47,37%7Csmartmaps" draggable="false"></div><div style="width: 256px; height: 256px; position: absolute; left: -87px; top: -218px; opacity: 1; transition: opacity 200ms ease-out 0s;"><img style="width: 256px; height: 256px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="http://mt0.googleapis.com/vt?lyrs=m@255092250&amp;src=apiv3&amp;hl=en-US&amp;x=38608&amp;y=49246&amp;z=17&amp;scale=2&amp;style=47,37%7Csmartmaps" draggable="false"></div><div style="width: 256px; height: 256px; position: absolute; left: 425px; top: 38px; opacity: 1; transition: opacity 200ms ease-out 0s;"><img style="width: 256px; height: 256px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="http://mt0.googleapis.com/vt?lyrs=m@255133634&amp;src=apiv3&amp;hl=en-US&amp;x=38610&amp;y=49247&amp;z=17&amp;scale=2&amp;style=47,37%7Csmartmaps" draggable="false"></div><div style="width: 256px; height: 256px; position: absolute; left: 425px; top: -218px; opacity: 1; transition: opacity 200ms ease-out 0s;"><img style="width: 256px; height: 256px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="http://mt0.googleapis.com/vt?lyrs=m@255131970&amp;src=apiv3&amp;hl=en-US&amp;x=38610&amp;y=49246&amp;z=17&amp;scale=2&amp;style=47,37%7Csmartmaps" draggable="false"></div><div style="width: 256px; height: 256px; position: absolute; left: -87px; top: 294px; opacity: 1; transition: opacity 200ms ease-out 0s;"><img style="width: 256px; height: 256px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="http://mt0.googleapis.com/vt?lyrs=m@255134750&amp;src=apiv3&amp;hl=en-US&amp;x=38608&amp;y=49248&amp;z=17&amp;scale=2&amp;style=47,37%7Csmartmaps" draggable="false"></div><div style="width: 256px; height: 256px; position: absolute; left: 425px; top: 294px; opacity: 1; transition: opacity 200ms ease-out 0s;"><img style="width: 256px; height: 256px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="http://mt0.googleapis.com/vt?lyrs=m@255092168&amp;src=apiv3&amp;hl=en-US&amp;x=38610&amp;y=49248&amp;z=17&amp;scale=2&amp;style=47,37%7Csmartmaps" draggable="false"></div></div></div></div></div><div style="margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;"><a style="position: static; overflow: visible; float: none; display: inline;" target="_blank" href="http://maps.google.com/maps?ll=40.781711,-73.955927&amp;z=17&amp;t=m&amp;hl=en-US&amp;gl=US&amp;mapclient=apiv3" title="Click to see this area on Google Maps"><div style="width: 62px; height: 26px; cursor: pointer;"><img style="position: absolute; left: 0px; top: 0px; width: 62px; height: 26px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="http://maps.gstatic.com/mapfiles/api-3/images/google_white2_hdpi.png" draggable="false"></div></a></div><div class="gmnoprint" style="z-index: 1000001; position: absolute; right: 168px; bottom: 0px; width: 122px;"><div draggable="false" style="-moz-user-select: none;" class="gm-style-cc"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto,Arial,sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right;"><a style="color: rgb(68, 68, 68); text-decoration: none; cursor: pointer; display: none;">Map Data</a><span style="">Map data &copy;2014 Google</span></div></div></div><div style="background-color: white; padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto,Arial,sans-serif; color: rgb(34, 34, 34); box-shadow: 0px 4px 16px rgba(0, 0, 0, 0.2); z-index: 10000002; display: none; width: 256px; height: 148px; position: absolute; left: 139px; top: 60px;"><div style="padding: 0px 0px 10px; font-size: 16px;">Map Data</div><div style="font-size: 13px;">Map data &copy;2014 Google</div><div style="width: 13px; height: 13px; overflow: hidden; position: absolute; opacity: 0.7; right: 12px; top: 12px; z-index: 10000; cursor: pointer;"><img style="position: absolute; left: -2px; top: -336px; width: 59px; height: 492px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="http://maps.gstatic.com/mapfiles/api-3/images/mapcnt3.png" draggable="false"></div></div><div class="gmnoscreen" style="position: absolute; right: 0px; bottom: 0px;"><div style="font-family: Roboto,Arial,sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);">Map data &copy;2014 Google</div></div><div class="gmnoprint gm-style-cc" style="z-index: 1000001; position: absolute; -moz-user-select: none; right: 96px; bottom: 0px;" draggable="false"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto,Arial,sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right;"><a style="text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);" href="http://www.google.com/intl/en-US_US/help/terms_maps.html" target="_blank">Terms of Use</a></div></div><div draggable="false" style="-moz-user-select: none; position: absolute; right: 0px; bottom: 0px;" class="gm-style-cc"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto,Arial,sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right;"><a target="_new" title="Report errors in the road map or imagery to Google" style="font-family: Roboto,Arial,sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;" href="http://maps.google.com/maps?ll=40.781711,-73.955927&amp;z=17&amp;t=m&amp;hl=en-US&amp;gl=US&amp;mapclient=apiv3&amp;skstate=action:mps_dialog$apiref:1&amp;output=classic">Report a map error</a></div></div></div></div>   
                <p></p>  
                
                <p class="half_form">            
                     <label for="property_latitude">Latitude (for Google Maps)</label>
                     <input type="text" value="" name="property_latitude" size="40" style="margin-right:20px;" id="property_latitude">
                </p>
                
                <p class="half_form half_form_last">    
                     <label for="property_longitude">Longitude (for Google Maps)</label>
                     <input type="text" value="" name="property_longitude" size="40" style="margin-right:20px;" id="property_longitude">
                </p>
                
                <p class="half_form">
                    <label for="property_google_view">Enable Google Street View</label>
                    <input type="hidden" value="" name="property_google_view">
                    <input type="checkbox" value="1" name="property_google_view" id="property_google_view">                           
                </p><br>

                <p class="half_form half_form_last">
                    <label for="google_camera_angle">Google Street View - Camera Angle (value from 0 to 360)</label>
                    <input type="text" value="" name="google_camera_angle" size="5" style="margin-right:0px;" id="google_camera_angle">
                </p>
                
                
            </div>    
            
            
            
            
            
            
            
            <div class="submit_container_header">Listing Details</div>
            <div class="submit_container nomargin">
                
                <p class="half_form">
                    <label for="property_size">Size in square feet</label>
                    <input type="text" value="" name="property_size" size="40" id="property_size">
                </p>

                <p class="half_form half_form_last">
                    <label for="property_lot_size"> Lot Size in square feet </label>
                    <input type="text" value="" name="property_lot_size" size="40" id="property_lot_size">
                </p>

            

                <p class="half_form ">
                    <label for="property_rooms">Rooms</label>
                    <input type="text" value="" name="property_rooms" size="40" id="property_rooms">
                </p>

                 <p class="half_form half_form_last">
                    <label for="property_bedrooms ">Bedrooms</label>
                    <input type="text" value="" name="property_bedrooms" size="40" id="property_bedrooms">
                </p>

                <p class="half_form ">
                    <label for="property_bedrooms">Bathrooms</label>
                    <input type="text" value="" name="property_bathrooms" size="40" id="property_bathrooms">
                </p>

             

                
                 
                 <!-- Add custom details -->
                 
                 <p class="half_form half_form_last"><label for="property_year">Year Built</label><input type="text" value="" name="property_year" size="40" id="property_year" class="hasDatepicker"></p><script type="text/javascript">
                                                                                                                                                                                                              //&lt;![CDATA[
                                                                                                                                                                                                              jQuery(document).ready(function () {
                                                                                                                                                                                                                  jQuery("#property_year").datepicker({
                                                                                                                                                                                                                      dateFormat: "yy-mm-dd"
                                                                                                                                                                                                                  });
                                                                                                                                                                                                              });
                                                                                                                                                                                                              //]]&gt;
</script><p class="half_form"><label for="property_garage">Garages</label><input type="text" value="" name="property_garage" size="40" id="property_garage"></p><p class="half_form half_form_last"><label for="property_garage_size">Garage Size in Square Feet</label><input type="text" value="" name="property_garage_size" size="40" id="property_garage_size"></p><p class="half_form"><label for="property_basement">Basement</label><input type="text" value="" name="property_basement" size="40" id="property_basement"></p><p class="half_form half_form_last"><label for="property_external_construction">External construction</label><input type="text" value="" name="property_external_construction" size="40" id="property_external_construction"></p><p class="half_form"><label for="property_roofing">Roofing</label><input type="text" value="" name="property_roofing" size="40" id="property_roofing"></p><p class="half_form half_form_last"><label for="Exterior_Material">Exterior Material</label><input type="text" value="" name="Exterior_Material" size="40" id="Exterior_Material"></p><p class="half_form"><label for="Structure_Type">Structure Type</label><input type="text" value="" name="Structure_Type" size="40" id="Structure_Type"></p><p class="half_form half_form_last"><label for="Stories">Stories</label><input type="text" value="" name="Stories" size="40" id="Stories"></p><p class="half_form"><label for="property_date">Available From</label><input type="text" value="" name="property_date" size="40" id="property_date" class="hasDatepicker"></p><script type="text/javascript">
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  //&lt;![CDATA[
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  jQuery(document).ready(function () {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      jQuery("#property_date").datepicker({
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          dateFormat: "yy-mm-dd"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      });
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  });
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  //]]&gt;
                            </script><p class="half_form half_form_last"><label for="MLS_">MLS ID #</label><input type="text" value="" name="MLS_" size="40" id="MLS_"></p>                 
                 
                 
            </div>  
                    
     </div><!-- end nine columns-->
     
     <div class="four columns omega nomargin">
         
         
            
               <div class="submit_container_header web">Membership</div>
               <div class="submit_container web"><strong>Your Package: PRO AGENCY</strong><br> <p class="full_form-nob">200 Listings - 184 remaining </p> <p class="full_form-nob"> <span id="normal_list_no">50 Featured listings</span> - <span id="featured_list_no">36</span> remaining </p></div>             
     
         
         
           
        
            <div class="submit_container_header web">Featured submission</div>
            <div class="submit_container web">            
                    <p class="meta-options full_form-nob"> 
                       
                       <input type="hidden" value="" name="prop_featured">
                       <input type="checkbox" value="1" name="prop_featured" id="prop_featured">                           
                       <label id="prop_featured_label" for="prop_featured">Make this property featured?</label>
                    </p> 
            </div>
         
          
         
         <div class="submit_container_header">Select Categories</div>
         <div class="submit_container"> 
            <p><label for="prop_category">Category</label>
            <select class="select-submit2" id="prop_category_submit" name="prop_category">
	<option value="4" class="level-0">Apartments</option>
	<option value="5" class="level-0">Houses</option>
	<option value="6" class="level-0">Land</option>
	<option value="7" class="level-0">Industrial</option>
	<option value="8" class="level-0">Offices</option>
	<option value="9" class="level-0">Retail</option>
	<option value="137" class="level-0">Condos</option>
	<option value="138" class="level-0">Villas</option>
	<option value="146" class="level-0">Duplexes</option>
</select>
            </p>

            <p><label for="prop_action_category"> Listed In </label>
                <select class="select-submit2" id="prop_action_category_submit" name="prop_action_category">
	<option value="2" class="level-0">Rentals</option>
	<option value="3" class="level-0">Sales</option>
</select>
            </p>       
         </div>
         
         
         
         
         <div class="submit_container_header">Slider Option</div>
         <div class="submit_container">  
            <p class="full_form">
                <label for="prop_slider_type">Slider type </label>
                <select class="select-submit2" name="prop_slider_type" id="prop_slider_type">
                    <option value="full top slider">full top slider</option><option value="small slider">small slider</option>                </select>
             </p>
         </div>
         
         
         
         
         
         
         <div class="submit_container_header">Select Property Status</div>
         <div class="submit_container">            
            <p class="full_form">
                <select class="select-submit" name="property_status" id="property_status">
                    <option value="normal">normal</option>
                    <option value="open house">open house</option><option value="sold">sold</option><option value="hot offer">hot offer</option><option value="under offer">under offer</option><option value="open home">open home</option><option value="new offer">new offer</option>                </select>
            </p>
         </div>
         
         
         
         
         
         
         
         
         <div class="submit_container_header">Amenities and Features</div>
         <div class="submit_container ">  
            <p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="attic">
                       <input type="checkbox" value="1" name="attic" id="attic"><label for="attic">attic</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="gas_heat">
                       <input type="checkbox" value="1" name="gas_heat" id="gas_heat"><label for="gas_heat"> gas heat</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="ocean_view">
                       <input type="checkbox" value="1" name="ocean_view" id="ocean_view"><label for="ocean_view"> ocean view</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="wine_cellar">
                       <input type="checkbox" value="1" name="wine_cellar" id="wine_cellar"><label for="wine_cellar"> wine cellar</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="basketball_court">
                       <input type="checkbox" value="1" name="basketball_court" id="basketball_court"><label for="basketball_court"> basketball court</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="gym">
                       <input type="checkbox" value="1" name="gym" id="gym"><label for="gym"> gym</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="pound">
                       <input type="checkbox" value="1" name="pound" id="pound"><label for="pound">pound</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="fireplace">
                       <input type="checkbox" value="1" name="fireplace" id="fireplace"><label for="fireplace"> fireplace</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="lake_view">
                       <input type="checkbox" value="1" name="lake_view" id="lake_view"><label for="lake_view"> lake view</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="pool">
                       <input type="checkbox" value="1" name="pool" id="pool"><label for="pool"> pool</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="back_yard">
                       <input type="checkbox" value="1" name="back_yard" id="back_yard"><label for="back_yard"> back yard</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="front_yard">
                       <input type="checkbox" value="1" name="front_yard" id="front_yard"><label for="front_yard"> front yard</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="fenced_yard">
                       <input type="checkbox" value="1" name="fenced_yard" id="fenced_yard"><label for="fenced_yard"> fenced yard</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="sprinklers">
                       <input type="checkbox" value="1" name="sprinklers" id="sprinklers"><label for="sprinklers"> sprinklers</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="washer_and_dryer">
                       <input type="checkbox" value="1" name="washer_and_dryer" id="washer_and_dryer"><label for="washer_and_dryer"> washer and dryer</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="deck">
                       <input type="checkbox" value="1" name="deck" id="deck"><label for="deck"> deck</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="balcony">
                       <input type="checkbox" value="1" name="balcony" id="balcony"><label for="balcony"> balcony</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="laundry">
                       <input type="checkbox" value="1" name="laundry" id="laundry"><label for="laundry"> laundry</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="water">
                       <input type="checkbox" value="1" name="water" id="water"><label for="water"> water</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="gas">
                       <input type="checkbox" value="1" name="gas" id="gas"><label for="gas"> gas</label></p><p class="full_form featurescol">
                       <input type="hidden" style="display:block;" value="" name="close_to_school">
                       <input type="checkbox" value="1" name="close_to_school" id="close_to_school"><label for="close_to_school"> close to school</label></p>         </div>
         
         
         
         
         
         
         <div class="submit_container_header">Video Option</div>
         <div class="submit_container ">  
             <p class="full_form">
                <label for="embed_video_type">Video from</label>
                <select class="select-submit2" name="embed_video_type" id="embed_video_type">
                    <option value="vimeo">vimeo</option><option value="youtube">youtube</option>                </select>
             </p>

            <p class="full_form sidebar_full_form">     
                <label for="embed_video_id">Embed Video id: </label>
                <input type="text" value="" size="40" name="embed_video_id" id="embed_video_id">
            </p>
         </div> 
         
      
     
     
     </div><!-- end three columns-->
     


    <input type="hidden" value="view" name="action">
               <button class="btn vernil small" id="form_submit_1" type="submit">Add Property</button>       
             
       
    <input type="hidden" value="" name="edit_id">
    <input type="hidden" value="" id="images_todelete" name="images_todelete">
    <input type="hidden" value="c3bb0198af" name="new_estate" id="new_estate"><input type="hidden" value="/new-property/" name="_wp_http_referer"></form>
                
            </div> <!-- end inside post-->
        </div>
        <!-- end content-->
    </div>
    </div>
</asp:Content>
