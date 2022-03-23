<?php
namespace App\Http\Controllers;
use App\Models\NhaPhanPhoi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Redirect;
class NhaPhanPhoiController extends Controller{
    public function index(Request $request)
    {
        $search = $request->input('search') ?? "";
        if (!empty($search))
            $lstNhaPhanPhoi = NhaPhanPhoi::where('TenNhaPhanPhoi', 'LIKE', "%$search%")->orWhere('id', 'LIKE', "%$search%")->paginate();
        else
            $lstNhaPhanPhoi = NhaPhanPhoi::paginate(5);
        $lstNhaPhanPhoi->appends($request->all());
       return view('nhaphanphoi.index',['lstNhaPhanPhoi'=>$lstNhaPhanPhoi]);
    }
    public function create()
    {
        $lstNhaPhanPhoi = NhaPhanPhoi::all();

        return view('nhaphanphoi.create', ['lstNhaPhanPhoi' => $lstNhaPhanPhoi]);
    }
    public function store(Request $request)
    {

        $npp = new NhaPhanPhoi();

        $npp->fill([
            'TenNhaPhanPhoi'=>$request->input('tennpp'),
            'Email'=>$request->input('emailnpp'),
            'SDT'=>$request->input('sdtnpp'),
            'TrangThai'=>1
        ]);
        $npp->save();
        return Redirect::route('nhaphanphoi.index', ['npp' => $npp])->with('add', 'Thêm thành công');
    }
    public function show(NhaPhanPhoi $nhaphanphoi)
    {
        return view('nhaphanphoi.show', ['nhaphanphoi' => $nhaphanphoi]);
    }
    public function edit(NhaPhanPhoi $nhaphanphoi)
    {
       //dd($loai);
        //  $l = NhaPhanPhoi::where('id', $loai)->first();
        return view('nhaphanphoi.edit', ['nhaphanphoi' => $nhaphanphoi]);
    }
    public function update(Request $request,NhaPhanPhoi $nhaphanphoi)
    {

        $nhaphanphoi->fill([
            'TenNhaPhanPhoi'=>$request->input('tennpp'),
            'Email'=>$request->input('emailnpp'),
            'SDT'=>$request->input('sdtnpp'),
            'TrangThai'=>1
        ]);
        $nhaphanphoi->save();
        return Redirect::route('nhaphanphoi.index',['nhaphanphoi'=>$nhaphanphoi]);
    }
    public function destroy(NhaPhanPhoi $nhaphanphoi)
    {
        $nhaphanphoi->delete();
        return Redirect::route('nhaphanphoi.index');
    }
    public function deleted()
    {
        $lstNPP = NhaPhanPhoi::onlyTrashed()->paginate(3);

        return view('nhaphanphoi.delete', ['lstNPP' => $lstNPP]);
    }
    public function restore($id)
    {
        $npp = NhaPhanPhoi::withTrashed()->where('id', $id)->first();
        $npp->restore();
        return Redirect::route('nhaphanphoi.deleted')->with('restored', 'ok');
    }
}
