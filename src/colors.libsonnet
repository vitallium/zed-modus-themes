local operandi = import 'palettes/operandi.libsonnet';
local vivendi = import 'palettes/vivendi.libsonnet';

local operandiOverrides = import 'palettes/operandi_overrides.libsonnet';
local vivendiOverrides = import 'palettes/vivendi_overrides.libsonnet';

(operandi + operandiOverrides) + (vivendi + vivendiOverrides)
