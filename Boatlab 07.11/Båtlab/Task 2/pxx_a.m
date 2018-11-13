function y = pxx_a(lambda, w)
    global w_0 max_intensity;
    K_w = (2*lambda*w_0*sqrt(max_intensity));
    y = (((w.*K_w).^2)./((w.^4)+(w_0.^4)+2*(w_0.^2)*(w.^2)*(2*(lambda.^2)-1)));
end




