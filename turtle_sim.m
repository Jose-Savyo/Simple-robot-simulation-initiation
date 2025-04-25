
function turtle_sim()
    % criar a figura
    fig = figure('Name', 'Simulação Turtle', 'NumberTitle', 'off', 'Position', [100, 100, 600, 600]);
    ax = axes('XLim', [0 10], 'YLim', [0 10], 'XGrid', 'on', 'YGrid', 'on');
    hold on;
    
    % criar o quadrado
    square = rectangle('Position', [4.5, 4.5, 1, 1], 'FaceColor', 'b');
    
    % criar sliders
    %uicontrol('Style', 'text', 'Position', [100, 50, 100, 20], 'String', 'X Position');
    xSlider = uicontrol('Style', 'slider', 'Min', 0, 'Max', 9, 'Value', 4.5, 'Position', [100, 30, 300, 20]);
    
    %uicontrol('Style', 'text', 'Position', [100, 10, 100, 20], 'String', 'Y Position');
    ySlider = uicontrol('Style', 'slider', 'Min', 0, 'Max', 9, 'Value', 4.5, 'Position', [100, -10, 300, 20]);
    
    % definir os callbacks após criação dos sliders
    xSlider.Callback = @(src, event) updatePosition(square, xSlider.Value, ySlider.Value);
    ySlider.Callback = @(src, event) updatePosition(square, xSlider.Value, ySlider.Value);
    
    % atualizar posição do quadrado ao iniciar
    updatePosition(square, xSlider.Value, ySlider.Value);
end

% funcao para atualizar a figura
function updatePosition(square, x, y)
    square.Position = [x, y, 1, 1];
end
