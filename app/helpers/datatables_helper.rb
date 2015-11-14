module DatatablesHelper;class ParamsHandler
  
  def initialize
    @default_params = [
      { :regex => /sEcho/ },
      { :regex => /iColumns/ },
      { :regex => /sColumns/ },
      { :regex => /iDisplay(.*)/ }, 
      { :regex => /mDataProp_(.*)/ },
      { :regex => /sSearch(.*)/, :replace => "sSearchReplace" },
      { :regex => /bRegex(.*)/ },
      { :regex => /bSearchable/ },
      { :regex => /iSortCol(.*)/ },
      { :regex => /sSortDir(.*)/ },
      { :regex => /iSortingCols/ },
      { :regex => /bSortable(.*)/ }
    ]
  end
  
  def handle(params)
    @where = ""
    params.each do |p|
      next if p[1].empty?
      m = @default_params.select{ |x| 
        !p[0].match(x[:regex]).nil?
      }.first
      unless m.nil? || m[:replace].nil?
        send(m[:replace].inspect[1..-2], p[1])
      end
    end
  end
  
  def sSearchColumn(col_arr)
    @sSearchCol = col_arr
  end
  
  def sSearchReplace(val)
    @sSearchCol.each_with_index do |col, i|
      @where += "#{col} ILIKE '#{val}%' "
      @where += "OR " if i < @sSearchCol.length - 1
    end
  end
  
  def where
    @where
  end
  
end;end

DH = DatatablesHelper