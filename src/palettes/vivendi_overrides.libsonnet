local common_overrides = {
  bg_button_hover: self.bg_hover,
  // Use blue-cooler for better contrast
  fg_link: self.blue_cooler,
  // Use a lighter border for better contrast
  border: self.fg_dim,
};

{
  Vivendi+: {} + common_overrides,
  'Vivendi Tinted'+: {} + common_overrides,
  'Vivendi Tritanopia'+: {} + common_overrides,
  'Vivendi Deuteranopia'+: {} + common_overrides,
}
