local common_overrides = {
  bg_button_hover: self.bg_hover,
  // Use blue-cooler for better contrast
  fg_link: self.blue_cooler,
  // Use a darker border for better contrast
  border: self.fg_dim,
};

{
  Operandi+: {} + common_overrides,
  'Operandi Tinted'+: {
    // More subtle foreground color
    fg_dim: '#545454',
  } + common_overrides,
  'Operandi Tritanopia'+: {} + common_overrides,
  'Operandi Deuteranopia'+: {} + common_overrides,
}
