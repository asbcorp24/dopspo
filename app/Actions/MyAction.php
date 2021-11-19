<?php
namespace App\Actions;
use TCG\Voyager\Actions\AbstractAction;
class MyAction extends AbstractAction
{
    public function getTitle()
    {
        return 'Файлы пользователя';
    }
    public function getIcon()
    {
        return 'voyager-upload';
    }
    public function getPolicy()
    {
        return 'read';
    }
    public function getAttributes()
    {
        return [
            'class' => 'btn btn-sm btn-primary pull-right',
        ];
    }
    public function getDefaultRoute()
    {
        return route('studfiles');
    }
}
