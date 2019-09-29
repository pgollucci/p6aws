######################################################################
#<
#
# Function:
#      = p6_aws_textract_document_analyze(document, feature_types)
#
# Arg(s):
#    document - 
#    feature_types - 
#
#
#>
######################################################################
p6_aws_textract_document_analyze() {
    local document="$1"
    local feature_types="$2"
    shift 2

    p6_run_write_cmd aws textract analyze-document --document $document --feature-types $feature_types "$@"
}