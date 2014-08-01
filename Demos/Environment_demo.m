function varargout=Environment_demo(max_time,step_time)
    %ENVIRONMENT_DEMO is a test stub to qualify ENV during development and prior to delivery
    % Use the command "Environment(50000,60);" to demo
    
    % RP: Set default values to allow easy calling with F5.
    if ~exist('max_time','var')
        max_time = 50000;
    end
    if ~exist('step_time','var')
        step_time = 60;
    end
    
    %%
    % run a test loop
        for time=0:step_time:max_time
            [traffic_matrix,traffic_image_matrix,boarded]=Environment(time);
            
           %end loop if the pirate has boarded
               if boarded==1 
                   break
               end
               
           % show the map for validation
            refresh(figure(1));
            
            data = traffic_matrix(150:650,100:900); %only show a portion of the map to save time
%             data = traffic_image_matrix(200:500,100:800);
                                                                           % RP: imshow is slow. Better to call it once then replace the data in subsequent iterations.
            if time==0
                iptsetpref('ImshowInitialMagnification',100)
                iptsetpref('ImshowBorder','tight')
                f = gcf;
                set(f,'Visible','off')
                imHandle = imshow(data);
                cmap = get(f,'Colormap'); % RP: Let's add some color.
                cmap(254,:) = [0,1,1]; % fishing boats
                cmap(255,:) = [1,0,1]; % tankers
                cmap(256,:) = [1,0,0]; % pirate
                set(f,'Colormap',cmap,'Visible','on')
            elseif ~ishandle(imHandle)
                break
            else
                set(imHandle,'CData',data)
            end
            set(f,'Name',datestr(time/86400,'HH:MM:SS'))
        end
        
        if nargout % RP: This is to repress output when calling with F5
            varargout = {traffic_matrix,boarded};
        else
            varargout = {};
        end
end