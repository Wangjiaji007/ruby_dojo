class HashSplitByKey

  def split_hash_by_key hash, *args
    result = []
    b = args.reduce(hash) do |haze, key|
      left = haze.select do |k, v|
        raise ArgumentError unless k.is_a? key.class
        haze.delete(k) || true if k >= key
      end
      result << haze unless haze.empty?
      left
    end
    result << b
    result
  end

end
