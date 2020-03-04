# Copyright 2020 Google LLC
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


module Google
  module Cloud
    module AutoML
      module V1beta1
        # A representation of an image.
        # Only images up to 30MB in size are supported.
        # @!attribute [rw] image_bytes
        #   @return [String]
        #     Image content represented as a stream of bytes.
        #     Note: As with all `bytes` fields, protobuffers use a pure binary
        #     representation, whereas JSON representations use base64.
        # @!attribute [rw] input_config
        #   @return [Google::Cloud::AutoML::V1beta1::InputConfig]
        #     An input config specifying the content of the image.
        # @!attribute [rw] thumbnail_uri
        #   @return [String]
        #     Output only. HTTP URI to the thumbnail image.
        class Image; end

        # A representation of a text snippet.
        # @!attribute [rw] content
        #   @return [String]
        #     Required. The content of the text snippet as a string. Up to 250000
        #     characters long.
        # @!attribute [rw] mime_type
        #   @return [String]
        #     Optional. The format of {Google::Cloud::AutoML::V1beta1::TextSnippet#content content}. Currently the only two allowed
        #     values are "text/html" and "text/plain". If left blank, the format is
        #     automatically determined from the type of the uploaded {Google::Cloud::AutoML::V1beta1::TextSnippet#content content}.
        # @!attribute [rw] content_uri
        #   @return [String]
        #     Output only. HTTP URI where you can download the content.
        class TextSnippet; end

        # Message that describes dimension of a document.
        # @!attribute [rw] unit
        #   @return [Google::Cloud::AutoML::V1beta1::DocumentDimensions::DocumentDimensionUnit]
        #     Unit of the dimension.
        # @!attribute [rw] width
        #   @return [Float]
        #     Width value of the document, works together with the unit.
        # @!attribute [rw] height
        #   @return [Float]
        #     Height value of the document, works together with the unit.
        class DocumentDimensions
          # Unit of the document dimension.
          module DocumentDimensionUnit
            # Should not be used.
            DOCUMENT_DIMENSION_UNIT_UNSPECIFIED = 0

            # Document dimension is measured in inches.
            INCH = 1

            # Document dimension is measured in centimeters.
            CENTIMETER = 2

            # Document dimension is measured in points. 72 points = 1 inch.
            POINT = 3
          end
        end

        # A structured text document e.g. a PDF.
        # @!attribute [rw] input_config
        #   @return [Google::Cloud::AutoML::V1beta1::DocumentInputConfig]
        #     An input config specifying the content of the document.
        # @!attribute [rw] document_text
        #   @return [Google::Cloud::AutoML::V1beta1::TextSnippet]
        #     The plain text version of this document.
        # @!attribute [rw] layout
        #   @return [Array<Google::Cloud::AutoML::V1beta1::Document::Layout>]
        #     Describes the layout of the document.
        #     Sorted by \\{Page_number}.
        # @!attribute [rw] document_dimensions
        #   @return [Google::Cloud::AutoML::V1beta1::DocumentDimensions]
        #     The dimensions of the page in the document.
        # @!attribute [rw] page_count
        #   @return [Integer]
        #     Number of pages in the document.
        class Document
          # Describes the layout information of a {Google::Cloud::AutoML::V1beta1::Document::Layout#text_segment text_segment} in the document.
          # @!attribute [rw] text_segment
          #   @return [Google::Cloud::AutoML::V1beta1::TextSegment]
          #     Text Segment that represents a segment in
          #     {Google::Cloud::AutoML::V1beta1::Document#document_text document_text}.
          # @!attribute [rw] page_number
          #   @return [Integer]
          #     Page number of the {Google::Cloud::AutoML::V1beta1::Document::Layout#text_segment text_segment} in the original document, starts
          #     from 1.
          # @!attribute [rw] bounding_poly
          #   @return [Google::Cloud::AutoML::V1beta1::BoundingPoly]
          #     The position of the {Google::Cloud::AutoML::V1beta1::Document::Layout#text_segment text_segment} in the page.
          #     Contains exactly 4
          #
          #     {Google::Cloud::AutoML::V1beta1::BoundingPoly#normalized_vertices normalized_vertices}
          #     and they are connected by edges in the order provided, which will
          #     represent a rectangle parallel to the frame. The
          #     {Google::Cloud::AutoML::V1beta1::NormalizedVertex NormalizedVertex-s} are
          #     relative to the page.
          #     Coordinates are based on top-left as point (0,0).
          # @!attribute [rw] text_segment_type
          #   @return [Google::Cloud::AutoML::V1beta1::Document::Layout::TextSegmentType]
          #     The type of the {Google::Cloud::AutoML::V1beta1::Document::Layout#text_segment text_segment} in document.
          class Layout
            # The type of TextSegment in the context of the original document.
            module TextSegmentType
              # Should not be used.
              TEXT_SEGMENT_TYPE_UNSPECIFIED = 0

              # The text segment is a token. e.g. word.
              TOKEN = 1

              # The text segment is a paragraph.
              PARAGRAPH = 2

              # The text segment is a form field.
              FORM_FIELD = 3

              # The text segment is the name part of a form field. It will be treated
              # as child of another FORM_FIELD TextSegment if its span is subspan of
              # another TextSegment with type FORM_FIELD.
              FORM_FIELD_NAME = 4

              # The text segment is the text content part of a form field. It will be
              # treated as child of another FORM_FIELD TextSegment if its span is
              # subspan of another TextSegment with type FORM_FIELD.
              FORM_FIELD_CONTENTS = 5

              # The text segment is a whole table, including headers, and all rows.
              TABLE = 6

              # The text segment is a table's headers. It will be treated as child of
              # another TABLE TextSegment if its span is subspan of another TextSegment
              # with type TABLE.
              TABLE_HEADER = 7

              # The text segment is a row in table. It will be treated as child of
              # another TABLE TextSegment if its span is subspan of another TextSegment
              # with type TABLE.
              TABLE_ROW = 8

              # The text segment is a cell in table. It will be treated as child of
              # another TABLE_ROW TextSegment if its span is subspan of another
              # TextSegment with type TABLE_ROW.
              TABLE_CELL = 9
            end
          end
        end

        # A representation of a row in a relational table.
        # @!attribute [rw] column_spec_ids
        #   @return [Array<String>]
        #     The resource IDs of the column specs describing the columns of the row.
        #     If set must contain, but possibly in a different order, all input
        #     feature
        #
        #     {Google::Cloud::AutoML::V1beta1::TablesModelMetadata#input_feature_column_specs column_spec_ids}
        #     of the Model this row is being passed to.
        #     Note: The below `values` field must match order of this field, if this
        #     field is set.
        # @!attribute [rw] values
        #   @return [Array<Google::Protobuf::Value>]
        #     Required. The values of the row cells, given in the same order as the
        #     column_spec_ids, or, if not set, then in the same order as input
        #     feature
        #
        #     {Google::Cloud::AutoML::V1beta1::TablesModelMetadata#input_feature_column_specs column_specs}
        #     of the Model this row is being passed to.
        class Row; end

        # Example data used for training or prediction.
        # @!attribute [rw] image
        #   @return [Google::Cloud::AutoML::V1beta1::Image]
        #     Example image.
        # @!attribute [rw] text_snippet
        #   @return [Google::Cloud::AutoML::V1beta1::TextSnippet]
        #     Example text.
        # @!attribute [rw] document
        #   @return [Google::Cloud::AutoML::V1beta1::Document]
        #     Example document.
        # @!attribute [rw] row
        #   @return [Google::Cloud::AutoML::V1beta1::Row]
        #     Example relational table row.
        class ExamplePayload; end
      end
    end
  end
end