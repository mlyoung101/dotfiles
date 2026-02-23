#!/usr/bin/env fish

# laptop
if test "$hostname" = "gecko"
    set temp (sensors -j 2> /dev/null | jq -r '."coretemp-isa-0000"."Package id 0".temp1_input | round')
    echo "{ \"text\": \" $temp°C\" }"
end

if test "$hostname" = "serpent"
    set temp (sensors -j | jq -r '."k10temp-pci-00c3".Tctl.temp1_input | round')
    echo "{ \"text\": \" $temp°C\" }"
end
