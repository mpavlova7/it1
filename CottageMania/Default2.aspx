﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="CottageMania.Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
    <script type="text/javascript" src="Scripts/jquery-1.3.1.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery.scrollTo.js"></script>
    <script>

        $(document).ready(function () {

            $('a.panel').click(function () {

                $('a.panel').removeClass('selected');
                $(this).addClass('selected');

                current = $(this);

                $('#wrapper').scrollTo($(this).attr('href'), 800);

                return false;
            });

            $(window).resize(function () {
                resizePanel();
            });

        });

        function resizePanel() {

            width = $(window).width();
            height = $(window).height();

            mask_width = width * $('.item').length;

            $('#debug').html(width + ' ' + height + ' ' + mask_width);

            $('#wrapper, .item').css({ width: width, height: height });
            $('#mask').css({ width: mask_width, height: height });
            $('#wrapper').scrollTo($('a.selected').attr('href'), 0);

        }

</script>


    <script type="text/javascript">
        function initialize() {
            var myLatlng = new google.maps.LatLng(61.18562, -111.26953);//-109.423828,60.196156,0.0 
            var mapOptions = {
                center: myLatlng,
                zoom: 4,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: "Test"
            });
        }
        google.maps.event.addDomListener(window, 'load', initialize);



        $(document).ready(function () {

            $('a.panel').click(function () {

                $('a.panel').removeClass('selected');
                $(this).addClass('selected');

                current = $(this);
                var wrapper = $('[id$="Content3"]');
                wrapper.scrollTo($(this).attr('href'), 800);

                return false;
            });

            $(window).resize(function () {
                resizePanel();
            });

        });

        function resizePanel() {

            width = $(window).width();
            height = $(window).height();

            mask_height = height * $('.item').length;

            $('#debug').html(width + ' ' + height + ' ' + mask_height);
            var wrapper = $('[id$="Content3"]');
            $('[id$="Content3"], .item').css({ width: width, height: height });
            $('#mask').css({ width: width, height: mask_height });
            wrapper.scrollTo($('a.selected').attr('href'), 0);

        }

    </script>
   
</asp:Content>
<asp:Content ID="phSearch" ContentPlaceHolderID="SearchPlaceHolder" runat="server">
    <!-- SEARCH CODE 
    <div style="top: 112px;" class="search_wrapper" id="search_wrapper">

        <div class="search_holder" id="adv_search_holder">
            <div id="adv-search-header-2" class="adv2_close">Advanced Search</div>
            <div style="display: none;" class="adv-search-2 " id="adv-search-2">
                <form role="search" method="post" action="http://wpestatetheme.org/advanced-search/">

                    <div class="advanced_action_div">
                        <div class="cd-dropdown">
                            <span style="z-index: 1002;">Rentals</span><input name="filter_search_action[]" value="Rentals" type="hidden"><ul style="height: auto;">
                                <li style="z-index: 1001; top: 0px; left: 0px; margin-left: 0px; opacity: 1; width: 153px; transition: all 300ms ease 0s;" data-value="Rentals"><span>Rentals</span></li>
                                <li style="z-index: 1000; top: 0px; left: 0px; margin-left: 0px; opacity: 1; width: 153px; transition: all 300ms ease 0s;" data-value="Sales"><span>Sales</span></li>
                            </ul>
                        </div>
                    </div>

                    <div class="advanced_categ_div">
                        <div class="cd-dropdown">
                            <span style="z-index: 1008;">Apartments</span><input name="filter_search_type[]" value="Apartments" type="hidden"><ul style="height: auto;">
                                <li style="z-index: 1007; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transition: all 300ms ease 0s;" data-value="Apartments"><span>Apartments</span></li>
                                <li style="z-index: 1006; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transition: all 300ms ease 0s;" data-value="Condos"><span>Condos</span></li>
                                <li style="z-index: 1005; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transition: all 300ms ease 0s;" data-value="Houses"><span>Houses</span></li>
                                <li style="z-index: 1004; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transition: all 300ms ease 0s;" data-value="Industrial"><span>Industrial</span></li>
                                <li style="z-index: 1003; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transition: all 300ms ease 0s;" data-value="Land"><span>Land</span></li>
                                <li style="z-index: 1002; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transition: all 300ms ease 0s;" data-value="Offices"><span>Offices</span></li>
                                <li style="z-index: 1001; top: 0px; left: 0px; margin-left: 0px; opacity: 1; width: 153px; transition: all 300ms ease 0s;" data-value="Retail"><span>Retail</span></li>
                                <li style="z-index: 1000; top: 0px; left: 0px; margin-left: 0px; opacity: 1; width: 153px; transition: all 300ms ease 0s;" data-value="Villas"><span>Villas</span></li>
                            </ul>
                        </div>
                    </div>

                    <div class="advanced_city_div">
                        <div class="cd-dropdown">
                            <span style="z-index: 1002;">New Jersey</span><input name="advanced_city" value="New Jersey" type="hidden"><ul style="height: auto;">
                                <li style="z-index: 1001; top: 0px; left: 0px; margin-left: 0px; opacity: 1; width: 153px; transition: all 300ms ease 0s;" data-value="New Jersey"><span>New Jersey</span></li>
                                <li style="z-index: 1000; top: 0px; left: 0px; margin-left: 0px; opacity: 1; width: 153px; transition: all 300ms ease 0s;" data-value="New York"><span>New York</span></li>
                            </ul>
                        </div>
                    </div>

                    <div class="advanced_area_div">
                        <div class="cd-dropdown">
                            <span style="z-index: 1007;">All Areas</span><input name="advanced_area" value="all" type="hidden"><ul style="height: auto;">
                                <li style="z-index: 1006; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transition: all 300ms ease 0s;" data-value="all"><span>All Areas</span></li>
                                <li style="z-index: 1005; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transition: all 300ms ease 0s;" data-value="East Harlem"><span>East Harlem</span></li>
                                <li style="z-index: 1004; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transition: all 300ms ease 0s;" data-value="Manhattan"><span>Manhattan</span></li>
                                <li style="z-index: 1003; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transition: all 300ms ease 0s;" data-value="Northern Brooklyn"><span>Northern Brooklyn</span></li>
                                <li style="z-index: 1002; top: 0px; left: 0px; margin-left: 0px; opacity: 1; transition: all 300ms ease 0s;" data-value="Queens"><span>Queens</span></li>
                                <li style="z-index: 1001; top: 0px; left: 0px; margin-left: 0px; opacity: 1; width: 153px; transition: all 300ms ease 0s;" data-value="Upper East Side"><span>Upper East Side</span></li>
                                <li style="z-index: 1000; top: 0px; left: 0px; margin-left: 0px; opacity: 1; width: 153px; transition: all 300ms ease 0s;" data-value="West Side"><span>West Side</span></li>
                            </ul>
                        </div>
                    </div>

                    <div class="adv_search_internal">
                        <input id="adv_rooms" name="advanced_rooms" value="Type Rooms No." class="advanced_select" type="text">
                    </div>

                    <div class="adv_search_internal">
                        <input id="adv_bath" name="advanced_bath" value="Type Bathrooms No." class="advanced_select" type="text">
                    </div>

                    <div class="adv_search_internal ">
                        <input id="price_low" name="price_low" class="advanced_select" value="Type Min. Price" type="text">
                    </div>

                    <div class="adv_search_internal">
                        <input id="price_max" name="price_max" class="advanced_select" value="Type Max. Price" type="text">
                    </div>

                    <input name="submit" class="btn vernil small" id="advanced_submit_2" value="Search" type="submit">
                </form>
            </div>
        </div>
        <!-- end search holder
    </div>-->
    <!-- end search wrapper-->
    <!-- END SEARCH CODE -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div id="wrapper">
        <div id="mask">

            <!-- first row -->
            <div class="item" id="item1">
                <a name="item1"></a>
                <div class="content">
                    None  
				
                </div>
            </div>

            <div class="item" id="item2">
                <a name="item2"></a>
                <div class="content">
                    <div class="main-content"> <h2>My Property List</h2>
               <p>"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..."
                   Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
 Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
</p>
                        <p>"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..."
                   Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
 Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
</p>
                    </div>
                </div>
            </div>

            <div class="item" id="item3">
                <a name="item3"></a>
                <div class="content">
                   
                    <div class="main-content"> <h2>Add New Property form/Edit Property </h2>
               <p>"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..."
                   Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
 Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
</p>
                        <p>"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..."
                   Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
 Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
</p>
                    </div>
               
                </div>
            </div>

            <div class="clear"></div>

            <!-- second row -->
            <div id="item4" class="item">
                <a name="item4"></a>
                <div class="content">
                   
                    <div class="main-content"> <h2>User Profile</h2>
               <p>"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..."
                   Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
 Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
</p>
                        
                    </div>
               
                </div>
            </div>
            <div id="item5" class="item">
                <a name="item5"></a>
                <div class="content">
                   

                   
                     <div id="page">
                    <div style="height: 590px;" class="gmap_wrapper">
                        <div class="gmap-next is-front" id="gmap-next"></div>
                        <div class="gmap-prev is-front" id="gmap-prev"></div>

                         <div class="geolocation-button " id="geolocation-button"></div>
                <div style="display: none;" id="tooltip-geolocation">place me on the map </div>

                        <div id="mobile-geolocation-button"></div>



                        <div style="position: relative; background-color: rgb(229, 227, 223); overflow: hidden; height: 590px;" id="googleMap">
                            <div id="map-canvas" class="gm-style" style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;">
                            </div>
                        </div>

                    </div>
                    <div style="margin: 5px; z-index: 0; position: absolute; cursor: pointer; right: 0px; top: 0px;" class="gmnoprint">
                        <div class="gm-style-mtc" style="float: left;">
                            <div title="Show street map" draggable="false" style="direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(0, 0, 0); font-family: Roboto,Arial,sans-serif; -moz-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 1px 6px; border-bottom-left-radius: 2px; border-top-left-radius: 2px; background-clip: padding-box; border: 1px solid rgba(0, 0, 0, 0.15); box-shadow: 0px 1px 4px -1px rgba(0, 0, 0, 0.3); min-width: 24px; font-weight: 500;">Map</div>
                            <div style="background-color: white; z-index: -1; padding-top: 2px; background-clip: padding-box; border-width: 0px 1px 1px; border-style: none solid solid; border-color: -moz-use-text-color rgba(0, 0, 0, 0.15) rgba(0, 0, 0, 0.15); -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none; box-shadow: 0px 1px 4px -1px rgba(0, 0, 0, 0.3); position: absolute; left: 0px; top: 15px; text-align: left; display: none;">
                                <div title="Show street map with terrain" draggable="false" style="color: rgb(0, 0, 0); font-family: Roboto,Arial,sans-serif; -moz-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 3px 8px 3px 5px; direction: ltr; text-align: left; white-space: nowrap;">
                                    <span style="position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; background-color: rgb(255, 255, 255); border: 1px solid rgb(198, 198, 198); border-radius: 1px 1px 1px 1px; width: 13px; height: 13px; vertical-align: middle;" role="checkbox">
                                        <div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;">
                                            <img draggable="false" src="Images/imgs8.png" style="position: absolute; left: -52px; top: -44px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px; width: 68px; height: 67px;">
                                        </div>
                                    </span>
                                    <label style="vertical-align: middle; cursor: pointer;">Terrain</label>
                                </div>
                            </div>
                        </div>
                        <div class="gm-style-mtc" style="float: left;">
                            <div title="Show satellite imagery" draggable="false" style="direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(86, 86, 86); font-family: Roboto,Arial,sans-serif; -moz-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 1px 6px; border-bottom-right-radius: 2px; border-top-right-radius: 2px; background-clip: padding-box; border-width: 1px 1px 1px 0px; border-style: solid solid solid none; border-color: rgba(0, 0, 0, 0.15) rgba(0, 0, 0, 0.15) rgba(0, 0, 0, 0.15) -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none; box-shadow: 0px 1px 4px -1px rgba(0, 0, 0, 0.3); min-width: 43px;">Satellite</div>
                            <div style="background-color: white; z-index: -1; padding-top: 2px; background-clip: padding-box; border-width: 0px 1px 1px; border-style: none solid solid; border-color: -moz-use-text-color rgba(0, 0, 0, 0.15) rgba(0, 0, 0, 0.15); -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none; box-shadow: 0px 1px 4px -1px rgba(0, 0, 0, 0.3); position: absolute; right: 0px; top: 15px; text-align: left; display: none;">
                                <div title="Zoom in to show 45 degree view" draggable="false" style="color: rgb(184, 184, 184); font-family: Roboto,Arial,sans-serif; -moz-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 3px 8px 3px 5px; direction: ltr; text-align: left; white-space: nowrap; display: none;">
                                    <span style="position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; background-color: rgb(255, 255, 255); border: 1px solid rgb(241, 241, 241); border-radius: 1px 1px 1px 1px; width: 13px; height: 13px; vertical-align: middle;" role="checkbox">
                                        <div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;">
                                            <img draggable="false" src="Images/imgs8.png" style="position: absolute; left: -52px; top: -44px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px; width: 68px; height: 67px;">
                                        </div>
                                    </span>
                                    <label style="vertical-align: middle; cursor: pointer;">45°</label>
                                </div>
                                <div title="Show imagery with street names" draggable="false" style="color: rgb(0, 0, 0); font-family: Roboto,Arial,sans-serif; -moz-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 3px 8px 3px 5px; direction: ltr; text-align: left; white-space: nowrap;">
                                    <span style="position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; background-color: rgb(255, 255, 255); border: 1px solid rgb(198, 198, 198); border-radius: 1px 1px 1px 1px; width: 13px; height: 13px; vertical-align: middle;" role="checkbox">
                                        <div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden;">
                                            <img draggable="false" src="Images/imgs8.png" style="position: absolute; left: -52px; top: -44px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px; width: 68px; height: 67px;">
                                        </div>
                                    </span>
                                    <label style="vertical-align: middle; cursor: pointer;">Labels</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="top: 199px; left: 742px; z-index: 1; display: none;" class="tooltip">click to enable zoom</div>
                <div class="gmap-menu-wrapper">
                    <div style="opacity: 0.3;" class="gmap-menu" id="gmap-menu">
                        <div id="closefilters"></div>
                        <div class="action_filter">
                            <div class="checker">
                                <input checked="checked" name="filter_action[]" id="rentals" class="rentals" value="Rentals" type="checkbox"><label for="rentals"><span></span><img src="Images/rentalsicon_002.png" alt="Rentals">Rentals</label>
                            </div>
                            <div class="checker">
                                <input checked="checked" name="filter_action[]" id="sales" class="sales" value="Sales" type="checkbox"><label for="sales"><span></span><img src="Images/salesicon.png" alt="Sales">Sales</label>
                            </div>
                        </div>

                        <div class="type-filters">
                            <div class="checker">
                                <input checked="checked" name="filter_type[]" id="apartments" class="apartments" value="Apartments" type="checkbox"><label for="apartments"><span></span>
                                    <img src="Images/apartmentsicon.png" alt="Apartments">Apartments</label>
                            </div>
                            <div class="checker">
                                <input checked="checked" name="filter_type[]" id="condos" class="condos" value="Condos" type="checkbox"><label for="condos"><span></span>
                                    <img src="Images/condo.png" alt="condos">Condos</label>
                            </div>
                            <div class="checker">
                                <input checked="checked" name="filter_type[]" id="houses" class="houses" value="Houses" type="checkbox"><label for="houses"><span></span>
                                    <img src="Images/housesicon_002.png" alt="Houses">Houses</label>
                            </div>
                            <div class="checker">
                                <input checked="checked" name="filter_type[]" id="industrial" class="industrial" value="Industrial" type="checkbox"><label for="industrial"><span></span>
                                    <img src="Images/industrialicon.png" alt="Industrial">Industrial</label>
                            </div>
                            <div class="checker">
                                <input checked="checked" name="filter_type[]" id="land" class="land" value="Land" type="checkbox"><label for="land"><span></span>
                                    <img src="Images/landicon.png" alt="Land">Land</label>
                            </div>
                            <div class="checker">
                                <input checked="checked" name="filter_type[]" id="offices" class="offices" value="Offices" type="checkbox"><label for="offices"><span></span>
                                    <img src="Images/officesicon_002.png" alt="Offices">Offices</label>
                            </div>
                            <div class="checker">
                                <input checked="checked" name="filter_type[]" id="retail" class="retail" value="Retail" type="checkbox"><label for="retail"><span></span>
                                    <img src="Images/retailicon.png" alt="Retail">Retail</label>
                            </div>
                            <div class="checker">
                                <input checked="checked" name="filter_type[]" id="villas" class="villas" value="Villas" type="checkbox"><label for="villas"><span></span>
                                    <img src="Images/villa.png" alt="villas">Villas</label>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- END Google Map -->
                <!-- Mobile Search -->
                <div id="gmap-mobile-filters">Filters</div>


                <div id="advanced_search_map_button_mobile">
                    Advanced Search
                </div>
                
                </div>
            </div>
            <div id="item6" class="item">
                <a name="item6"></a>
                <div class="content">
                  
                    <div class="main-content">  <h2>List Search Results view</h2> 
               <p>"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..."
                   Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
 Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
</p>
                        <p>"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..."
                   Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
 Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
</p>
                    </div>
               
                </div>
            </div>
            <div class="clear"></div>

            <!-- third row -->

            <div id="item7" class="item">
                <a name="item7"></a>
                <div class="content">
                    
              
                </div>
            </div>
            <div id="item8" class="item">
                <a name="item8"></a>
                <div class="content">
                   
                    <div class="main-content"> <h2>ProperyItem Details </h2>
               <p>"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..."
                   Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
 Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
</p>
                    </div>
               
                </div>
            </div>

            <div id="item9" class="item">
                <a name="item9"></a>
                <div class="content">
                   
               
                </div>
            </div>

            <div class="clear"></div>

        </div>
    </div>

</asp:Content>


