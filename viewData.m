function viewData(K, data, dataname)
    % split it into X and Y
    X = data(:,1:3);
    Y = data(:,4);

    % if we just want to explore dynamic vs stationary
    if (K == 2)
        Y(Y<4) = 1;
        Y(Y>3) = 2;
    end

    % plot the initial points
    ColorMat= [1 0 0; % red
            0 1 0; % green
            0 0 1; % blue
            1 0 1; % magenta
            0 1 1; % cyan
            0 0 0; % black
            1 1 0]; % yellow
    % build color map
    colorVec = ColorMat((Y), :);
    scatter3(X(:,1),X(:,2),X(:,3),[],colorVec);
    xlabel('x'), ylabel('y'), zlabel('z')
    % save this clustering goal
    saveas(gcf,sprintf('./images/%s_K_%d_goal.png',dataname, K))
