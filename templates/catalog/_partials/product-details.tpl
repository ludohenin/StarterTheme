<div id="product-details">
  {block name='product_reference'}
    {if $product.reference}
      <div>
        <label>{l s='Reference'} </label>
        <span itemprop="sku">{$product.reference}</span>
      </div>
    {/if}
    {/block}
    {block name='product_quantities'}
      {if $product.show_quantities}
        <div>
          <label>{l s='In stock'}</label>
          <span>{$product.quantity} {$product.quantity_label}</span>
        </div>
      {/if}
    {/block}
    {block name='product_availability_date'}
      {if $product.availability_date}
        <div>
          <label>{l s='Availability date:'} </label>
          <span>{$product.availability_date}</span>
        </div>
      {/if}
    {/block}
    {block name='product_out_of_stock'}
      <div>
        {hook h='actionProductOutOfStock' product=$product}
      </div>
    {/block}

    {block name='product_features'}
      {if $product.features}
        <section>
          <h3>{l s='Data sheet'}</h3>
          <dl>
            {foreach from=$product.features item=feature}
              <dt>{$feature.name}</dt>
              <dd>{$feature.value}</dd>
            {/foreach}
          </dl>
        </section>
      {/if}
  {/block}

  {block name='product_condition'}
    {if $product.condition}
      <div class="product-condition">
        <label class="label">{l s='Condition'} </label>
        <link itemprop="itemCondition" href="{$product.condition.schema_url}"/>
        <span>{$product.condition.label}</span>
      </div>
    {/if}
  {/block}
</div>
