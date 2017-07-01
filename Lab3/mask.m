function mask = mask(shape, size)

mask = zeros(8,8);

if(shape == 't')
    for i = 1:8
        for j = 1:8
            if(i <= size && j <= size + 1 - i)
                mask(i, j) = 1;
            else
                mask(i, j) = 0;
            end
        end
    end
else
    for i = 1:8
        for j = 1:8
            if(i <= size && j <= size)
                mask(i, j) = 1;
            else
                mask(i, j) = 0;
            end
        end
    end
end

end