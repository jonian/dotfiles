function svgclean
  for f in *.svg
    command svgcleaner --indent=2 $f $f
  end
end
