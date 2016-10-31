{if $instant_search_results && !empty($instant_search_results)}
    <ul class="brad-autocomplete-block">

        {foreach $instant_search_results as $product}
            <li class="brad-autocomplete-item" role="presentation">
                <a class="brad-autocomplete-item-border" href="{$product.link|escape:'htmlall':'UTF-8'}" tabindex="-1">

                    <img src="{$link->getImageLink($product.link_rewrite, $product.id_image, $image_type)|escape:'htmlall':'UTF-8'}"
                         class="brad-autocomplete-item-image"
                    >

                    <div class="brad-autocomplete-info-block">
                        <span class="brad-autocomplete-item-name">
                            {$product.name|escape:'htmlall':'UTF-8'}
                        </span>
                        <br>
                        <span class="brad-autocomplete-item-category">
                            {$product.category_name|escape:'htmlall':'UTF-8'}
                        </span>
                    </div>

                </a>
            </li>
        {/foreach}

        <li class="brad-autocomplete-item" role="presentation">
            <a class="brad-autocomplete-item-border" href="{$more_search_results_url|escape:'htmlall':'UTF-8'}">
                {l s='See more results' mod='brad'}
            </a>
        </li>
    </ul>
{else}
    <ul class="brad-autocomplete-block">
        <li class="brad-autocomplete-item" role="presentation">
            <a class="brad-autocomplete-item-border" href="#">
                <span class="brad-autocomplete-item-name">{l s='No results were found' mod='brad'}</span>
            </a>
        </li>
    </ul>
{/if}
