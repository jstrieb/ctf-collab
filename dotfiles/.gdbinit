# Pretty-print the stack centered around the base pointer
define stack
  if ($argc > 0)
    set $total = $arg0 / 2
  else
    if ($rsp == $rbp)
      set $total = 16
    else
      set $total = ($rbp - $rsp) / 8 + 2
    end
  end
  if ($argc > 1)
    set $mid = $arg1
  else
    set $mid = $rbp
  end

  set $i = -1 * $total
  while ($i < $total)
    set $addr = ($mid - ($i * 0x8))
    if ($rbp != $rsp)
      if ($addr == $rbp)
        printf "                                   < rbp\r"
      end
      if ($addr == $rsp)
        printf "                                   < rsp\r"
      end
      if ($addr == $rip)
        printf "                                   < rip\r"
      end
      if ($addr == $rdi)
        printf "                                   < rdi\r"
      end
      if ($addr == $rsi)
        printf "                                   < rsi\r"
      end
      if ($addr == $rdx)
        printf "                                   < rdx\r"
      end
      if ($addr == $rcx)
        printf "                                   < rcx\r"
      end
    else
      if ($addr == $rbp)
        printf "                                   < rbp/rsp\r"
      end
    end
    x /1xg $addr
    set $i = $i + 1
  end
end


# Print the disassembly (works even during stack execution)
define pdisas
  if ($argc == 0)
    set $lines = 32
  else
    set $lines = $arg0
  end

  disas $rip - ($lines / 2), +$lines
end


# Take a step, and then print the disassembly (works even during stack execution)
define pstep
  if ($argc == 0)
    set $lines = 32
  else
    set $lines = $arg0
  end

  ni
  disas $rip - ($lines / 2), +$lines
end


# Remove coloring (hard to see on my terminal)
# set style enabled off
