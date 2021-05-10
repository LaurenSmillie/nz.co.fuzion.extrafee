{* HEADER *}

<div class="crm-submit-buttons">
{include file="CRM/common/formButtons.tpl" location="top"}
</div>

{* FIELD EXAMPLE: OPTION 1 (AUTOMATIC LAYOUT) *}

{foreach from=$elementNames item=elementName}
  <div class="crm-section">
    <div class="label">{$form.$elementName.label}</div>
    <div class="content">{$form.$elementName.html}</div>
    {if $elementName EQ 'extra_fee_message'}
      <div class='content description'>Insert {literal}{total_amount}{/literal} token in the above field to display the calculated amount in the message.</div>
    {/if}
    {if $elementName EQ 'extra_fee_paymentprocessors'}
      <div class='content description'>If you enable this for a payment processor then the Extra Fee will apply to all payment processors that are enabled on the same contribution/event page. Leave blank to apply to all contribution/event pages.</div>
    {/if}
    {if $elementName EQ 'extra_fee_optional'}
      <div class='content description'>If checked, an optional checkbox is displayed on the form to add extra fee on the total amount.</div>
    {/if}
    <div class="clear"></div>
  </div>
{/foreach}

{* FOOTER *}
<div class="crm-submit-buttons">
{include file="CRM/common/formButtons.tpl" location="bottom"}
</div>
{literal}
<script>
  CRM.$(function($) {
    $('#extra_fee_optional').change(function() {
      $('#extra_fee_label').closest('div.crm-section').toggle($(this).is(':checked'));
    }).trigger('change');
  });
</script>
{/literal}
