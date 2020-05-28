######################################################################
#<
#
# Function: p6_aws_imagebuilder_svc_ic_list()
#
#>
######################################################################
p6_aws_imagebuilder_svc_ic_list() {

    p6_aws_cmd imagebuilder \
	       list-infrastructure-configurations \
	       --output text \
	       --query "'infrastructureConfigurationSummaryList[].[Arn, Name]'"
}

######################################################################
#<
#
# Function: p6_aws_imagebuilder_svc_ir_list()
#
#>
######################################################################
p6_aws_imagebuilder_svc_ir_list() {

    p6_aws_cmd imagebuilder \
	       list-image-recipes \
	       --output text \
	       --query "'imageRecipeSummaryList[]'"
}

######################################################################
#<
#
# Function: p6_aws_imagebuilder_svc_dc_list()
#
#>
######################################################################
p6_aws_imagebuilder_svc_dc_list() {

    p6_aws_cmd imagebuilder \
	       list-distribution-configurations \
	       --output text \
	       --query "'distributionConfigurationSummaryList[]'"
}

######################################################################
#<
#
# Function: p6_aws_imagebuilder_svc_pipelines_list()
#
#>
######################################################################
p6_aws_imagebuilder_svc_pipelines_list() {

    p6_aws_cmd imagebuilder \
	       list-image-pipelines \
	       --output text \
	       --query "'imagePipelineList[].[status, platform, dateCreated, dateUpdated, name, description, arn]'"
}

######################################################################
#<
#
# Function: p6_aws_imagebuilder_svc_images_list()
#
#>
######################################################################
p6_aws_imagebuilder_svc_images_list() {

    p6_aws_cmd imagebuilder \
	       list-images \
	       --output text \
	       --query "'imageVersionList[].[version, platform, owner, dateCreated, name, arn]'"
}