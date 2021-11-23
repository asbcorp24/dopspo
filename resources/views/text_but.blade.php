@if(($view=="edit")or($view=="add"))
<input @if($row->required == 1) required @endif type="text" class="form-control" name="{{ $row->field }}"
       placeholder="{{ old($row->field, $options->placeholder ?? $row->getTranslatedAttribute('display_name')) }}"
       {!! isBreadSlugAutoGenerator($options) !!}
       value="{{ old($row->field, $dataTypeContent->{$row->field} ?? $options->default ?? '') }}">
<button class="btn btn-info">Внутренний email</button>
@else
<span>{{$content}}</span>
@endif
