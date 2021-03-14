######################################################################
#<
#
# Function: p6_aws_svc_imagebuilder_ic_list()
#
#>
######################################################################
p6_aws_svc_imagebuilder_ic_list() {

	p6_aws_cli_cmd imagebuilder \
		list-infrastructure-configurations \
		--output text \
		--query "'infrastructureConfigurationSummaryList[].[Arn, Name]'"
}

######################################################################
#<
#
# Function: p6_aws_svc_imagebuilder_ir_list()
#
#>
######################################################################
p6_aws_svc_imagebuilder_ir_list() {

	p6_aws_cli_cmd imagebuilder \
		list-image-recipes \
		--output text \
		--query "'imageRecipeSummaryList[]'"
}

######################################################################
#<
#
# Function: p6_aws_svc_imagebuilder_dc_list()
#
#>
######################################################################
p6_aws_svc_imagebuilder_dc_list() {

	p6_aws_cli_cmd imagebuilder \
		list-distribution-configurations \
		--output text \
		--query "'distributionConfigurationSummaryList[]'"
}

######################################################################
#<
#
# Function: p6_aws_svc_imagebuilder_pipelines_list()
#
#>
######################################################################
p6_aws_svc_imagebuilder_pipelines_list() {

	p6_aws_cli_cmd imagebuilder \
		list-image-pipelines \
		--output text \
		--query "'imagePipelineList[].[status, platform, dateCreated, dateUpdated, name, description, arn]'"
}

######################################################################
#<
#
# Function: p6_aws_svc_imagebuilder_images_list()
#
#>
######################################################################
p6_aws_svc_imagebuilder_images_list() {

	p6_aws_cli_cmd imagebuilder \
		list-images \
		--output text \
		--query "'imageVersionList[].[version, platform, owner, dateCreated, name, arn]'"
}
