function ps5
    set capacity (cat /sys/class/power_supply/ps-controller-battery-4c:b9:9b:cc:ba:12/capacity)
    set battery_status (cat /sys/class/power_supply/ps-controller-battery-4c:b9:9b:cc:ba:12/status)
    
    # Simple bar
    set bar_length 20
    set filled (math "round($capacity / 100 * $bar_length)")
    set empty (math "$bar_length - $filled")
    
    set bar (string repeat -n $filled '█')(string repeat -n $empty '░')
    
    echo "🎮 PS5 Controller: [$bar] $capacity% ($battery_status)"
end
