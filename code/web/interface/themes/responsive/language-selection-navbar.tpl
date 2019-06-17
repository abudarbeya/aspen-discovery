{strip}
	{if count($validLanguages) > 1}
	<div id="language-selection-header" class="row">
		<div id="language-selection-dropdown" class="col-tn-6 col-xs-6 col-sm-4 col-lg-3 pull-right form-inline">
			<div class="form-group">
				<select aria-label="Select a language for the catalog" id="selected-language"  class="form-control-sm" onchange="return AspenDiscovery.setLanguage();">
					{foreach from=$validLanguages key=languageCode item=language}
						<option value="{$languageCode}"{if $userLang->code==$languageCode} selected="selected"{/if}>
							{$language->displayName}
						</option>
					{/foreach}
				</select>
			</div>
		</div>
	</div>
	{/if}
{/strip}