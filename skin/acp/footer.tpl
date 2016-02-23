{if !isset($no_footer)}
<div class="navbar navbar-fixed-bottom navbar-inverse hidden-xs hidden-sm" id="footer">
    <div class="col-md-3 text-left footer">
		{if $debug}<nobr><b class="text-warning t10"><span class="fa fa-exclamation-triangle"></span> Внимание! У вас включен режим отладки!</b></nobr><br />{/if}
		{if !$debug && $devmode}<nobr><b class="text-error t10"><span class="fa fa-exclamation-triangle"></span> ТРЕБУЕТСЯ ВКЛЮЧИТЬ РЕЖИМ ОТЛАДКИ !!!</b></nobr><br />{/if}
		{if $devmode}<nobr><b class="text-warning t10"><span class="fa fa-exclamation-triangle"></span> Внимание! У вас включен режим разработчика!</b></nobr>{/if}
    </div>

    <div class="col-md-2 text-left footer">
        <small>
            <br /><nobr><span class="fa fa-bar-chart-o"></span> Число обращений к БД: <b>{$db_querys}</b></nobr>
        </small>
    </div>
    <div class="col-md-2 text-left footer">
        <small>
			<br /><nobr><span class="fa fa-tachometer"></span> Использовано памяти : <span style="cursor: help;" title="{round($debug_memusage/1024/1024, 2)} Мб макс"><b>{round($debug_memory/1024/1024, 2)} Мб</b></span></nobr>
        </small>
    </div>
    <div class="col-md-2 text-left footer">
        <small>
			<br /><nobr><span class="fa fa-clock-o"></span> Время работы скрипта : <b>{$debug_timer} мс</b></nobr>
        </small>
    </div>
    <div class="col-md-3 text-right footer">
        <small>
            <nobr>{$copyright}</nobr>
			<br /><nobr>Версия {$smarty.const.ROOCMS_FULL_VERSION}</nobr>
		</small>
    </div>
</div>

<div class="container visible-xs visible-sm">
	<div class="row">
    	<div class="col-xs-12" style="padding-top: 20px;margin-bottom: -40px;">
			{if $debug}<nobr><b class="text-warning"><span class="fa fa-exclamation-triangle"></span> Внимание! У вас включен режим отладки!</b></nobr><br />{/if}
			{if !$debug && $devmode}<nobr><b class="text-error"><span class="fa fa-exclamation-triangle"></span> ТРЕБУЕТСЯ ВКЛЮЧИТЬ РЕЖИМ ОТЛАДКИ !!!</b></nobr><br />{/if}
			{if $devmode}<nobr><b class="text-warning"><span class="fa fa-exclamation-triangle"></span> Внимание! У вас включен режим разработчика!</b></nobr>{/if}

			<br />
			<br /><nobr><span class="fa fa-bar-chart-o fa-fw"></span> Число обращений к БД: <b>{$db_querys}</b></nobr>
			<br /><nobr><span class="fa fa-tachometer fa-fw"></span> Использовано памяти : <b>{round($debug_memory/1024/1024, 2)} Мб ({round($debug_memusage/1024/1024, 2)} Мб макс)</b></nobr>
			<br /><nobr><span class="fa fa-clock-o fa-fw"></span> Время работы скрипта : <b>{$debug_timer} мс</b></nobr>

            <br />
            <br /><nobr>{$copyright}</nobr>
			<br /><nobr>Версия {$smarty.const.ROOCMS_FULL_VERSION}</nobr>
    	</div>
	</div>
</div>
{/if}
	</div>
</div>

</body>
</html>