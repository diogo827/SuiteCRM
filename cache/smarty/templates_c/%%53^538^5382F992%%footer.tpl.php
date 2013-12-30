<?php /* Smarty version 2.6.11, created on 2013-12-30 00:23:56
         compiled from themes/Suite7/tpls/footer.tpl */ ?>
<!--end body panes-->
        </td></tr></table>
    </div>
    <div class="clear"></div>

</div>

<div id="bottomLinks">
<?php if ($this->_tpl_vars['AUTHENTICATED']): ?>
    <?php endif; ?>
</div>

<div id="footer">
    <?php if ($this->_tpl_vars['AUTHENTICATED']): ?>
    <div id="links">
        <button id="backtotop">Back To Top</button>
    </div>
    <?php endif; ?>
	<br/>
    <br/>
	<div id="responseTime">
    	<?php echo $this->_tpl_vars['STATISTICS']; ?>

    </div>

    <div id="copyright_data">
    <div>Powered by SugarCRM</div>
    </div>

</div>
<script>
<?php echo '

if(SUGAR.util.isTouchScreen()) {
        setTimeout(resizeHeader,10000);
}

//qe_init function sets listeners to click event on elements of \'quickEdit\' class
 if(typeof(DCMenu) !=\'undefined\'){
    DCMenu.qe_refresh = false;
    DCMenu.qe_handle;
 }
function qe_init(){

    //do not process if YUI is undefined
    if(typeof(YUI)==\'undefined\' || typeof(DCMenu) == \'undefined\'){
        return;
    }


    //remove all existing listeners.  This will prevent adding multiple listeners per element and firing multiple events per click
    if(typeof(DCMenu.qe_handle) !=\'undefined\'){
        DCMenu.qe_handle.detach();
    }

    //set listeners on click event, and define function to call
    YUI().use(\'node\', function(Y) {
        var qe = Y.all(\'.quickEdit\');
        var refreshDashletID;
        var refreshListID;

        //store event listener handle for future use, and define function to call on click event
        DCMenu.qe_handle = qe.on(\'click\', function(e) {
            //function will flash message, and retrieve data from element to pass on to DC.miniEditView function
            ajaxStatus.flashStatus(SUGAR.language.get(\'app_strings\', \'LBL_LOADING\'),800);
            e.preventDefault();
            if(typeof(e.currentTarget.getAttribute(\'data-dashlet-id\'))!=\'undefined\'){
                refreshDashletID = e.currentTarget.getAttribute(\'data-dashlet-id\');
            }
            if(typeof(e.currentTarget.getAttribute(\'data-list\'))!=\'undefined\'){
                refreshListID = e.currentTarget.getAttribute(\'data-list\');
            }
            DCMenu.miniEditView(e.currentTarget.getAttribute(\'data-module\'), e.currentTarget.getAttribute(\'data-record\'),refreshListID,refreshDashletID);
        });

    });
}

    qe_init();


	SUGAR_callsInProgress++;
	SUGAR._ajax_hist_loaded = true;
    if(SUGAR.ajaxUI)
    	YAHOO.util.Event.onContentReady(\'ajaxUI-history-field\', SUGAR.ajaxUI.firstLoad);
</script>
    <script>
        $( "button" ).click(function() {
            $( "#sugarcopy" ).toggle();

        });

        $(function() {
            $( "#dialog, #dialog2" ).dialog({
                autoOpen: false,
                show: {
                    effect: "blind",
                    duration: 100
                },
                hide: {
                    effect: "fade",
                    duration: 1000
                }
            });
            $( "#powered_by" ).click(function() {
                $( "#dialog" ).dialog( "open" );
                $("#overlay").show().css({"opacity": "0.5"});
            });
            $( "#admin_options" ).click(function() {
                $( "#dialog2" ).dialog( "open" );
            });
        });

        $("#read").click(function(){

        });

        // Back to top animation
        $(\'#backtotop\').click(function(event) {
            event.preventDefault();
            $(\'html, body\').animate({scrollTop:0}, 500); // Scroll speed to the top
        });
    </script>
'; ?>

</body>
</html>