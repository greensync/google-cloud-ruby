# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Retail
      module V2
        # Request message for
        # {::Google::Cloud::Retail::V2::SearchService::Client#search SearchService.Search} method.
        # @!attribute [rw] placement
        #   @return [::String]
        #     Required. The resource name of the search engine placement, such as
        #     `projects/*/locations/global/catalogs/default_catalog/placements/default_search`.
        #     This field is used to identify the set of models that will be used to make
        #     the search.
        #
        #     We currently support one placement with the following ID:
        #
        #     * `default_search`.
        # @!attribute [rw] branch
        #   @return [::String]
        #     The branch resource name, such as
        #     `projects/*/locations/global/catalogs/default_catalog/branches/0`.
        #
        #     Use "default_branch" as the branch ID or leave this field empty, to search
        #     products under the default branch.
        # @!attribute [rw] query
        #   @return [::String]
        #     Raw search query.
        # @!attribute [rw] visitor_id
        #   @return [::String]
        #     Required. A unique identifier for tracking visitors. For example, this
        #     could be implemented with an HTTP cookie, which should be able to uniquely
        #     identify a visitor on a single device. This unique identifier should not
        #     change if the visitor logs in or out of the website.
        #
        #     The field must be a UTF-8 encoded string with a length limit of 128
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] user_info
        #   @return [::Google::Cloud::Retail::V2::UserInfo]
        #     User information.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum number of {::Google::Cloud::Retail::V2::Product Product}s to return. If
        #     unspecified, defaults to a reasonable value. The maximum allowed value is
        #     120. Values above 120 will be coerced to 120.
        #
        #     If this field is negative, an INVALID_ARGUMENT is returned.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token
        #     {::Google::Cloud::Retail::V2::SearchResponse#next_page_token SearchResponse.next_page_token},
        #     received from a previous
        #     {::Google::Cloud::Retail::V2::SearchService::Client#search SearchService.Search} call.
        #     Provide this to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to
        #     {::Google::Cloud::Retail::V2::SearchService::Client#search SearchService.Search} must
        #     match the call that provided the page token. Otherwise, an INVALID_ARGUMENT
        #     error is returned.
        # @!attribute [rw] offset
        #   @return [::Integer]
        #     A 0-indexed integer that specifies the current offset (that is, starting
        #     result location, amongst the {::Google::Cloud::Retail::V2::Product Product}s
        #     deemed by the API as relevant) in search results. This field is only
        #     considered if {::Google::Cloud::Retail::V2::SearchRequest#page_token page_token}
        #     is unset.
        #
        #     If this field is negative, an INVALID_ARGUMENT is returned.
        # @!attribute [rw] filter
        #   @return [::String]
        #     The filter syntax consists of an expression language for constructing a
        #     predicate from one or more fields of the products being filtered. Filter
        #     expression is case-sensitive. See more details at this [user
        #     guide](/retail/private/docs/filter-and-order#filter).
        #
        #     If this field is unrecognizable, an INVALID_ARGUMENT is returned.
        # @!attribute [rw] canonical_filter
        #   @return [::String]
        #     The filter applied to every search request when quality improvement such as
        #     query expansion is needed. For example, if a query does not have enough
        #     results, an expanded query with
        #     {::Google::Cloud::Retail::V2::SearchRequest#canonical_filter SearchRequest.canonical_filter}
        #     will be returned as a supplement of the original query. This field is
        #     strongly recommended to achieve high search quality.
        #
        #     See {::Google::Cloud::Retail::V2::SearchRequest#filter SearchRequest.filter} for
        #     more details about filter syntax.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     The order in which products are returned. Products can be ordered by
        #     a field in an {::Google::Cloud::Retail::V2::Product Product} object. Leave it
        #     unset if ordered by relevance. OrderBy expression is case-sensitive. See
        #     more details at this [user
        #     guide](/retail/private/docs/filter-and-order#order).
        #
        #     If this field is unrecognizable, an INVALID_ARGUMENT is returned.
        # @!attribute [rw] facet_specs
        #   @return [::Array<::Google::Cloud::Retail::V2::SearchRequest::FacetSpec>]
        #     Facet specifications for faceted search. If empty, no facets are returned.
        #
        #     A maximum of 100 values are allowed. Otherwise, an INVALID_ARGUMENT error
        #     is returned.
        # @!attribute [rw] dynamic_facet_spec
        #   @return [::Google::Cloud::Retail::V2::SearchRequest::DynamicFacetSpec]
        #     The specification for dynamically generated facets. Notice that only
        #     textual facets can be dynamically generated.
        #
        #     This feature requires additional allowlisting. Contact Retail Search
        #     support team if you are interested in using dynamic facet feature.
        # @!attribute [rw] boost_spec
        #   @return [::Google::Cloud::Retail::V2::SearchRequest::BoostSpec]
        #     Boost specification to boost certain products. See more details at this
        #     [user guide](/retail/private/docs/boosting).
        # @!attribute [rw] query_expansion_spec
        #   @return [::Google::Cloud::Retail::V2::SearchRequest::QueryExpansionSpec]
        #     The query expansion specification that specifies the conditions under which
        #     query expansion will occur. See more details at this [user
        #     guide](/retail/private/docs/result-size#query_expansion).
        # @!attribute [rw] variant_rollup_keys
        #   @return [::Array<::String>]
        #     The keys to fetch and rollup the matching
        #     {::Google::Cloud::Retail::V2::Product::Type::VARIANT variant}
        #     {::Google::Cloud::Retail::V2::Product Product}s attributes. The attributes from
        #     all the matching {::Google::Cloud::Retail::V2::Product::Type::VARIANT variant}
        #     {::Google::Cloud::Retail::V2::Product Product}s are merged and de-duplicated.
        #     Notice that rollup {::Google::Cloud::Retail::V2::Product::Type::VARIANT variant}
        #     {::Google::Cloud::Retail::V2::Product Product}s attributes will lead to extra
        #     query latency. Maximum number of keys is 10.
        #
        #     For {::Google::Cloud::Retail::V2::FulfillmentInfo FulfillmentInfo}, a
        #     fulfillment type and a fulfillment ID must be provided in the format of
        #     "fulfillmentType.fulfillmentId". E.g., in "pickupInStore.store123",
        #     "pickupInStore" is fulfillment type and "store123" is the store ID.
        #
        #     Supported keys are:
        #
        #     * colorFamilies
        #     * price
        #     * originalPrice
        #     * discount
        #     * attributes.key, where key is any key in the
        #       {::Google::Cloud::Retail::V2::Product#attributes Product.attributes} map.
        #     * pickupInStore.id, where id is any
        #     {::Google::Cloud::Retail::V2::FulfillmentInfo#place_ids FulfillmentInfo.place_ids}
        #     for {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type}
        #       "pickup-in-store".
        #     * shipToStore.id, where id is any
        #     {::Google::Cloud::Retail::V2::FulfillmentInfo#place_ids FulfillmentInfo.place_ids}
        #     for {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type}
        #       "ship-to-store".
        #     * sameDayDelivery.id, where id is any
        #     {::Google::Cloud::Retail::V2::FulfillmentInfo#place_ids FulfillmentInfo.place_ids}
        #     for {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type}
        #       "same-day-delivery".
        #     * nextDayDelivery.id, where id is any
        #     {::Google::Cloud::Retail::V2::FulfillmentInfo#place_ids FulfillmentInfo.place_ids}
        #     for {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type}
        #       "next-day-delivery".
        #     * customFulfillment1.id, where id is any
        #     {::Google::Cloud::Retail::V2::FulfillmentInfo#place_ids FulfillmentInfo.place_ids}
        #     for {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type}
        #       "custom-type-1".
        #     * customFulfillment2.id, where id is any
        #     {::Google::Cloud::Retail::V2::FulfillmentInfo#place_ids FulfillmentInfo.place_ids}
        #     for {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type}
        #       "custom-type-2".
        #     * customFulfillment3.id, where id is any
        #     {::Google::Cloud::Retail::V2::FulfillmentInfo#place_ids FulfillmentInfo.place_ids}
        #     for {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type}
        #       "custom-type-3".
        #     * customFulfillment4.id, where id is any
        #     {::Google::Cloud::Retail::V2::FulfillmentInfo#place_ids FulfillmentInfo.place_ids}
        #     for {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type}
        #       "custom-type-4".
        #     * customFulfillment5.id, where id is any
        #     {::Google::Cloud::Retail::V2::FulfillmentInfo#place_ids FulfillmentInfo.place_ids}
        #     for {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type}
        #       "custom-type-5".
        #
        #     If this field is set to an invalid value other than these, an
        #     INVALID_ARGUMENT error is returned.
        # @!attribute [rw] page_categories
        #   @return [::Array<::String>]
        #     The categories associated with a category page. Required for category
        #     navigation queries to achieve good search quality. The format should be
        #     the same as
        #     {::Google::Cloud::Retail::V2::UserEvent#page_categories UserEvent.page_categories};
        #
        #     To represent full path of category, use '>' sign to separate different
        #     hierarchies. If '>' is part of the category name, please replace it with
        #     other character(s).
        #
        #     Category pages include special pages such as sales or promotions. For
        #     instance, a special sale page may have the category hierarchy:
        #     "pageCategories" : ["Sales > 2017 Black Friday Deals"].
        class SearchRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A facet specification to perform faceted search.
          # @!attribute [rw] facet_key
          #   @return [::Google::Cloud::Retail::V2::SearchRequest::FacetSpec::FacetKey]
          #     Required. The facet key specification.
          # @!attribute [rw] limit
          #   @return [::Integer]
          #     Maximum of facet values that should be returned for this facet. If
          #     unspecified, defaults to 20. The maximum allowed value is 300. Values
          #     above 300 will be coerced to 300.
          #
          #     If this field is negative, an INVALID_ARGUMENT is returned.
          # @!attribute [rw] excluded_filter_keys
          #   @return [::Array<::String>]
          #     List of keys to exclude when faceting.
          #
          #     By default,
          #     {::Google::Cloud::Retail::V2::SearchRequest::FacetSpec::FacetKey#key FacetKey.key}
          #     is not excluded from the filter unless it is listed in this field.
          #
          #     For example, suppose there are 100 products with color facet "Red" and
          #     200 products with color facet "Blue". A query containing the filter
          #     "colorFamilies:ANY("Red")" and have "colorFamilies" as
          #     {::Google::Cloud::Retail::V2::SearchRequest::FacetSpec::FacetKey#key FacetKey.key}
          #     will by default return the "Red" with count 100.
          #
          #     If this field contains "colorFamilies", then the query returns both the
          #     "Red" with count 100 and "Blue" with count 200, because the
          #     "colorFamilies" key is now excluded from the filter.
          #
          #     A maximum of 100 values are allowed. Otherwise, an INVALID_ARGUMENT error
          #     is returned.
          # @!attribute [rw] enable_dynamic_position
          #   @return [::Boolean]
          #     Enables dynamic position for this facet. If set to true, the position of
          #     this facet among all facets in the response is determined by Google
          #     Retail Search. It will be ordered together with dynamic facets if dynamic
          #     facets is enabled. If set to false, the position of this facet in the
          #     response will be the same as in the request, and it will be ranked before
          #     the facets with dynamic position enable and all dynamic facets.
          #
          #     For example, you may always want to have rating facet returned in
          #     the response, but it's not necessarily to always display the rating facet
          #     at the top. In that case, you can set enable_dynamic_position to true so
          #     that the position of rating facet in response will be determined by
          #     Google Retail Search.
          #
          #     Another example, assuming you have the following facets in the request:
          #
          #     * "rating", enable_dynamic_position = true
          #
          #     * "price", enable_dynamic_position = false
          #
          #     * "brands", enable_dynamic_position = false
          #
          #     And also you have a dynamic facets enable, which will generate a facet
          #     'gender'. Then the final order of the facets in the response can be
          #     ("price", "brands", "rating", "gender") or ("price", "brands", "gender",
          #     "rating") depends on how Google Retail Search orders "gender" and
          #     "rating" facets. However, notice that "price" and "brands" will always be
          #     ranked at 1st and 2nd position since their enable_dynamic_position are
          #     false.
          class FacetSpec
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Specifies how a facet is computed.
            # @!attribute [rw] key
            #   @return [::String]
            #     Required. Supported textual and numerical facet keys in
            #     {::Google::Cloud::Retail::V2::Product Product} object, over which the facet
            #     values are computed. Facet key is case-sensitive.
            #
            #     Allowed facet keys when
            #     {::Google::Cloud::Retail::V2::SearchRequest::FacetSpec::FacetKey#query FacetKey.query}
            #     is not specified:
            #
            #     * textual_field =
            #         * "brands"
            #         * "categories"
            #         * "genders"
            #         * "ageGroups"
            #         * "availability"
            #         * "colorFamilies"
            #         * "colors"
            #         * "sizes"
            #         * "materials"
            #         * "patterns"
            #         * "conditions"
            #         * "attributes.key"
            #         * "pickupInStore"
            #         * "shipToStore"
            #         * "sameDayDelivery"
            #         * "nextDayDelivery"
            #         * "customFulfillment1"
            #         * "customFulfillment2"
            #         * "customFulfillment3"
            #         * "customFulfillment4"
            #         * "customFulfillment5"
            #
            #     * numerical_field =
            #         * "price"
            #         * "discount"
            #         * "rating"
            #         * "ratingCount"
            #         * "attributes.key"
            # @!attribute [rw] intervals
            #   @return [::Array<::Google::Cloud::Retail::V2::Interval>]
            #     Set only if values should be bucketized into intervals. Must be set
            #     for facets with numerical values. Must not be set for facet with text
            #     values. Maximum number of intervals is 30.
            # @!attribute [rw] restricted_values
            #   @return [::Array<::String>]
            #     Only get facet for the given restricted values. For example, when using
            #     "pickupInStore" as key and set restricted values to
            #     ["store123", "store456"], only facets for "store123" and "store456" are
            #     returned. Only supported on textual fields and fulfillments.
            #     Maximum is 20.
            #
            #     Must be set for the fulfillment facet keys:
            #
            #     * pickupInStore
            #
            #     * shipToStore
            #
            #     * sameDayDelivery
            #
            #     * nextDayDelivery
            #
            #     * customFulfillment1
            #
            #     * customFulfillment2
            #
            #     * customFulfillment3
            #
            #     * customFulfillment4
            #
            #     * customFulfillment5
            # @!attribute [rw] prefixes
            #   @return [::Array<::String>]
            #     Only get facet values that start with the given string prefix. For
            #     example, suppose "categories" has three values "Women > Shoe",
            #     "Women > Dress" and "Men > Shoe". If set "prefixes" to "Women", the
            #     "categories" facet will give only "Women > Shoe" and "Women > Dress".
            #     Only supported on textual fields. Maximum is 10.
            # @!attribute [rw] contains
            #   @return [::Array<::String>]
            #     Only get facet values that contains the given strings. For example,
            #     suppose "categories" has three values "Women > Shoe",
            #     "Women > Dress" and "Men > Shoe". If set "contains" to "Shoe", the
            #     "categories" facet will give only "Women > Shoe" and "Men > Shoe".
            #     Only supported on textual fields. Maximum is 10.
            # @!attribute [rw] order_by
            #   @return [::String]
            #     The order in which [Facet.values][] are returned.
            #
            #     Allowed values are:
            #
            #     * "count desc", which means order by [Facet.FacetValue.count][]
            #     descending.
            #
            #     * "value desc", which means order by [Facet.FacetValue.value][]
            #     descending.
            #       Only applies to textual facets.
            #
            #     If not set, textual values are sorted in [natural
            #     order](https://en.wikipedia.org/wiki/Natural_sort_order); numerical
            #     intervals are sorted in the order given by
            #     {::Google::Cloud::Retail::V2::SearchRequest::FacetSpec::FacetKey#intervals FacetSpec.FacetKey.intervals};
            #     {::Google::Cloud::Retail::V2::FulfillmentInfo#place_ids FulfillmentInfo.place_ids}
            #     are sorted in the order given by
            #     {::Google::Cloud::Retail::V2::SearchRequest::FacetSpec::FacetKey#restricted_values FacetSpec.FacetKey.restricted_values}.
            # @!attribute [rw] query
            #   @return [::String]
            #     The query that is used to compute facet for the given facet key.
            #     When provided, it will override the default behavior of facet
            #     computation. The query syntax is the same as a filter expression. See
            #     {::Google::Cloud::Retail::V2::SearchRequest#filter SearchRequest.filter} for
            #     detail syntax and limitations. Notice that there is no limitation on
            #     {::Google::Cloud::Retail::V2::SearchRequest::FacetSpec::FacetKey#key FacetKey.key}
            #     when query is specified.
            #
            #     In the response, [FacetValue.value][] will be always "1" and
            #     [FacetValue.count][] will be the number of results that matches the
            #     query.
            #
            #     For example, you can set a customized facet for "shipToStore",
            #     where
            #     {::Google::Cloud::Retail::V2::SearchRequest::FacetSpec::FacetKey#key FacetKey.key}
            #     is "customizedShipToStore", and
            #     {::Google::Cloud::Retail::V2::SearchRequest::FacetSpec::FacetKey#query FacetKey.query}
            #     is "availability: ANY(\"IN_STOCK\") AND shipToStore: ANY(\"123\")".
            #     Then the facet will count the products that are both in stock and ship
            #     to store "123".
            class FacetKey
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # The specifications of dynamically generated facets.
          # @!attribute [rw] mode
          #   @return [::Google::Cloud::Retail::V2::SearchRequest::DynamicFacetSpec::Mode]
          #     Mode of the DynamicFacet feature.
          #     Defaults to
          #     {::Google::Cloud::Retail::V2::SearchRequest::DynamicFacetSpec::Mode::DISABLED Mode.DISABLED}
          #     if it's unset.
          class DynamicFacetSpec
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Enum to control DynamicFacet mode
            module Mode
              # Default value.
              MODE_UNSPECIFIED = 0

              # Disable Dynamic Facet.
              DISABLED = 1

              # Automatic mode built by Google Retail Search.
              ENABLED = 2
            end
          end

          # Boost specification to boost certain items.
          # @!attribute [rw] condition_boost_specs
          #   @return [::Array<::Google::Cloud::Retail::V2::SearchRequest::BoostSpec::ConditionBoostSpec>]
          #     Condition boost specifications. If a product matches multiple conditions
          #     in the specifictions, boost scores from these specifications are all
          #     applied and combined in a non-linear way. Maximum number of
          #     specifications is 10.
          class BoostSpec
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Boost applies to products which match a condition.
            # @!attribute [rw] condition
            #   @return [::String]
            #     An expression which specifies a boost condition. The syntax and
            #     supported fields are the same as a filter expression. See
            #     {::Google::Cloud::Retail::V2::SearchRequest#filter SearchRequest.filter} for
            #     detail syntax and limitations.
            #
            #     Examples:
            #
            #     * To boost products with product ID "product_1" or "product_2", and
            #     color
            #       "Red" or "Blue":<br>
            #       *(id: ANY("product_1", "product_2"))<br>*
            #       *AND<br>*
            #       *(colorFamilies: ANY("Red", "Blue"))<br>*
            # @!attribute [rw] boost
            #   @return [::Float]
            #     Strength of the condition boost, which should be in [-1, 1]. Negative
            #     boost means demotion. Default is 0.0.
            #
            #     Setting to 1.0 gives the item a big promotion. However, it does not
            #     necessarily mean that the boosted item will be the top result at all
            #     times, nor that other items will be excluded. Results could still be
            #     shown even when none of them matches the condition. And results that
            #     are significantly more relevant to the search query can still trump
            #     your heavily favored but irrelevant items.
            #
            #     Setting to -1.0 gives the item a big demotion. However, results that
            #     are deeply relevant might still be shown. The item will have an
            #     upstream battle to get a fairly high ranking, but it is not blocked out
            #     completely.
            #
            #     Setting to 0.0 means no boost applied. The boosting condition is
            #     ignored.
            class ConditionBoostSpec
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Specification to determine under which conditions query expansion should
          # occur.
          # @!attribute [rw] condition
          #   @return [::Google::Cloud::Retail::V2::SearchRequest::QueryExpansionSpec::Condition]
          #     The condition under which query expansion should occur. Default to
          #     {::Google::Cloud::Retail::V2::SearchRequest::QueryExpansionSpec::Condition::DISABLED Condition.DISABLED}.
          # @!attribute [rw] pin_unexpanded_results
          #   @return [::Boolean]
          #     Whether to pin unexpanded results. If this field is set to true,
          #     unexpanded products are always at the top of the search results, followed
          #     by the expanded results.
          class QueryExpansionSpec
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Enum describing under which condition query expansion should occur.
            module Condition
              # Unspecified query expansion condition. This defaults to
              # {::Google::Cloud::Retail::V2::SearchRequest::QueryExpansionSpec::Condition::DISABLED Condition.DISABLED}.
              CONDITION_UNSPECIFIED = 0

              # Disabled query expansion. Only the exact search query is used, even if
              # {::Google::Cloud::Retail::V2::SearchResponse#total_size SearchResponse.total_size}
              # is zero.
              DISABLED = 1

              # Automatic query expansion built by Google Retail Search.
              AUTO = 3
            end
          end
        end

        # Response message for
        # {::Google::Cloud::Retail::V2::SearchService::Client#search SearchService.Search} method.
        # @!attribute [rw] results
        #   @return [::Array<::Google::Cloud::Retail::V2::SearchResponse::SearchResult>]
        #     A list of matched items. The order represents the ranking.
        # @!attribute [rw] facets
        #   @return [::Array<::Google::Cloud::Retail::V2::SearchResponse::Facet>]
        #     Results of facets requested by user.
        # @!attribute [rw] total_size
        #   @return [::Integer]
        #     The estimated total count of matched items irrespective of pagination. The
        #     count of {::Google::Cloud::Retail::V2::SearchResponse#results results} returned
        #     by pagination may be less than the
        #     {::Google::Cloud::Retail::V2::SearchResponse#total_size total_size} that
        #     matches.
        # @!attribute [rw] corrected_query
        #   @return [::String]
        #     If spell correction applies, the corrected query. Otherwise, empty.
        # @!attribute [rw] attribution_token
        #   @return [::String]
        #     A unique search token. This should be included in the
        #     {::Google::Cloud::Retail::V2::UserEvent UserEvent} logs resulting from this
        #     search, which enables accurate attribution of search model performance.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token that can be sent as
        #     {::Google::Cloud::Retail::V2::SearchRequest#page_token SearchRequest.page_token}
        #     to retrieve the next page. If this field is omitted, there are no
        #     subsequent pages.
        # @!attribute [rw] query_expansion_info
        #   @return [::Google::Cloud::Retail::V2::SearchResponse::QueryExpansionInfo]
        #     Query expansion information for the returned results.
        # @!attribute [rw] redirect_uri
        #   @return [::String]
        #     The URI of a customer-defined redirect page. If redirect action is
        #     triggered, no search will be performed, and only
        #     {::Google::Cloud::Retail::V2::SearchResponse#redirect_uri redirect_uri} and
        #     {::Google::Cloud::Retail::V2::SearchResponse#attribution_token attribution_token}
        #     will be set in the response.
        class SearchResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Represents the search results.
          # @!attribute [rw] id
          #   @return [::String]
          #     {::Google::Cloud::Retail::V2::Product#id Product.id} of the searched
          #     {::Google::Cloud::Retail::V2::Product Product}.
          # @!attribute [rw] product
          #   @return [::Google::Cloud::Retail::V2::Product]
          #     The product data snippet in the search response. Only
          #     {::Google::Cloud::Retail::V2::Product#name Product.name} is guaranteed to be
          #     populated.
          #
          #     {::Google::Cloud::Retail::V2::Product#variants Product.variants} contains the
          #     product variants that match the search query. If there are multiple
          #     product variants matching the query, top 5 most relevant product variants
          #     are returned and ordered by relevancy.
          #
          #     If relevancy can be deternmined, use
          #     {::Google::Cloud::Retail::V2::SearchResponse::SearchResult#matching_variant_fields matching_variant_fields}
          #     to look up matched product variants fields. If relevancy cannot be
          #     determined, e.g. when searching "shoe" all products in a shoe product can
          #     be a match, 5 product variants are returned but order is meaningless.
          # @!attribute [rw] matching_variant_count
          #   @return [::Integer]
          #     The count of matched
          #     {::Google::Cloud::Retail::V2::Product::Type::VARIANT variant}
          #     {::Google::Cloud::Retail::V2::Product Product}s.
          # @!attribute [rw] matching_variant_fields
          #   @return [::Google::Protobuf::Map{::String => ::Google::Protobuf::FieldMask}]
          #     If a {::Google::Cloud::Retail::V2::Product::Type::VARIANT variant}
          #     {::Google::Cloud::Retail::V2::Product Product} matches the search query, this
          #     map indicates which {::Google::Cloud::Retail::V2::Product Product} fields are
          #     matched. The key is the
          #     {::Google::Cloud::Retail::V2::Product#name Product.name}, the value is a field
          #     mask of the matched {::Google::Cloud::Retail::V2::Product Product} fields. If
          #     matched attributes cannot be determined, this map will be empty.
          #
          #     For example, a key "sku1" with field mask
          #     "products.color_info" indicates there is a match between
          #     "sku1" {::Google::Cloud::Retail::V2::ColorInfo ColorInfo} and the query.
          # @!attribute [rw] variant_rollup_values
          #   @return [::Google::Protobuf::Map{::String => ::Google::Protobuf::Value}]
          #     The rollup matching
          #     {::Google::Cloud::Retail::V2::Product::Type::VARIANT variant}
          #     {::Google::Cloud::Retail::V2::Product Product} attributes. The key is one of
          #     the
          #     {::Google::Cloud::Retail::V2::SearchRequest#variant_rollup_keys SearchRequest.variant_rollup_keys}.
          #     The values are the merged and de-duplicated
          #     {::Google::Cloud::Retail::V2::Product Product} attributes. Notice that the
          #     rollup values are respect filter. For example, when filtering by
          #     "colorFamilies:ANY(\"red\")" and rollup "colorFamilies", only "red" is
          #     returned.
          #
          #     For textual and numerical attributes, the rollup values is a list of
          #     string or double values with type
          #     {::Google::Protobuf::ListValue google.protobuf.ListValue}. For example, if
          #     there are two variants with colors "red" and "blue", the rollup values
          #     are
          #
          #         { key: "colorFamilies"
          #           value {
          #             list_value {
          #               values { string_value: "red" }
          #               values { string_value: "blue" }
          #              }
          #           }
          #         }
          #
          #     For {::Google::Cloud::Retail::V2::FulfillmentInfo FulfillmentInfo}, the rollup
          #     values is a double value with type
          #     {::Google::Protobuf::Value google.protobuf.Value}. For example,
          #     `{key: "pickupInStore.store1" value { number_value: 10 }}` means a there
          #     are 10 variants in this product are available in the store "store1".
          class SearchResult
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::Google::Protobuf::FieldMask]
            class MatchingVariantFieldsEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::Google::Protobuf::Value]
            class VariantRollupValuesEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # A facet result.
          # @!attribute [rw] key
          #   @return [::String]
          #     The key for this facet. E.g., "colorFamilies" or "price" or
          #     "attributes.attr1".
          # @!attribute [rw] values
          #   @return [::Array<::Google::Cloud::Retail::V2::SearchResponse::Facet::FacetValue>]
          #     The facet values for this field.
          # @!attribute [rw] dynamic_facet
          #   @return [::Boolean]
          #     Whether the facet is dynamically generated.
          class Facet
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # A facet value which contains value names and their count.
            # @!attribute [rw] value
            #   @return [::String]
            #     Text value of a facet, such as "Black" for facet "colorFamilies".
            # @!attribute [rw] interval
            #   @return [::Google::Cloud::Retail::V2::Interval]
            #     Interval value for a facet, such as [10, 20) for facet "price".
            # @!attribute [rw] count
            #   @return [::Integer]
            #     Number of items that have this facet value.
            class FacetValue
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Information describing query expansion including whether expansion has
          # occurred.
          # @!attribute [rw] expanded_query
          #   @return [::Boolean]
          #     Bool describing whether query expansion has occurred.
          # @!attribute [rw] pinned_result_count
          #   @return [::Integer]
          #     Number of pinned results. This field will only be set when expansion
          #     happens and [SearchRequest.query_expansion_spec.pin_unexpanded_results][]
          #     is set to true.
          class QueryExpansionInfo
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
