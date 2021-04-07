resource "aws_cloudformation_stack" "topic" {
    name = local.pproduct_name
    template_body = jsonencode({
        Resources = {
            SCProduct = {
                Type = "AWS::ServiceCatalog::CloudFormationProvisionedProduct"
                Properties = {
                    ProvisionedProductName = local.pproduct_name
                    ProductId = local.product_id
                    ProvisioningArtifactId = local.pproduct_id
                    # this loop filters out nulls and reformats a normal object into 
                    # amazons [ { Key: ..., Value: ... }] format
                    ProvisioningParameters = [ 
                        for k,v in local.parameters 
                        : { Key = k, Value = v } 
                        if v != null 
                    ]
                }
            }
        }
    })

    tags = merge(local.mandatory_tags)
}
