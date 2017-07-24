package android
type Product_variables struct {
	Needs_platform_textrels struct {
		Cppflags []string
	}
}

type ProductVariables struct {
	Needs_platform_textrels  *bool `json:",omitempty"`
}
