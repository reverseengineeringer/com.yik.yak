.class public Lcom/yik/yak/ui/fragment/ManagePeeksFragment;
.super Lcom/yik/yak/ui/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements LBI;
.implements LBn;


# instance fields
.field protected c:Z

.field private d:Landroid/view/View;

.field private e:Landroid/content/Context;

.field private f:Landroid/widget/ListView;

.field private g:LES;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yik/yak/data/models/PeekLocation;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/yik/yak/data/models/PeekLocation;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->c:Z

    .line 45
    iput-object v1, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->d:Landroid/view/View;

    .line 46
    iput-object v1, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->e:Landroid/content/Context;

    .line 255
    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/fragment/ManagePeeksFragment;Lcom/yik/yak/data/models/PeekLocation;)Lcom/yik/yak/data/models/PeekLocation;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->i:Lcom/yik/yak/data/models/PeekLocation;

    return-object p1
.end method

.method public static synthetic a(Lcom/yik/yak/ui/fragment/ManagePeeksFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->h:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/yik/yak/data/models/PeekLocation;)V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->e:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    const-string v1, "title"

    const-string v2, "Edit Peek Location"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v1, "message"

    const-string v2, "Enter the new name for the peek location."

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v1, "editText"

    iget-object v2, p1, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v1, "value"

    iget-object v2, p1, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v1, "okText"

    const v2, 0x7f080169

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "cancelText"

    const v2, 0x7f08008b

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 125
    return-void
.end method

.method public static synthetic b(Lcom/yik/yak/ui/fragment/ManagePeeksFragment;)Lcom/yik/yak/data/models/PeekLocation;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->i:Lcom/yik/yak/data/models/PeekLocation;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/PeekLocation;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/PeekLocation;->isDefault:Z

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->f:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 104
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->f:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    const-string v0, "Manage My Peeks"

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->e:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    const-string v1, "title"

    const-string v2, "Delete Peek Location"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do you want to remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v1, "okText"

    const v2, 0x7f0801b2

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v1, "cancelText"

    const v2, 0x7f080132

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 114
    return-void
.end method

.method public e()LGf;
    .locals 1

    .prologue
    .line 234
    sget-object v0, LGf;->c:LGf;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public g()V
    .locals 3

    .prologue
    .line 250
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->e:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 252
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const v3, 0x7f030067

    const/4 v0, 0x1

    .line 129
    packed-switch p1, :pswitch_data_0

    .line 197
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 131
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 132
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    invoke-virtual {v0}, LAO;->f()V

    .line 133
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    invoke-virtual {v0}, LAO;->c()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->h:Ljava/util/List;

    .line 134
    new-instance v0, LES;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->h:Ljava/util/List;

    invoke-direct {v0, p0, v1, v3, v2}, LES;-><init>(Lcom/yik/yak/ui/fragment/ManagePeeksFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->g:LES;

    .line 135
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->g:LES;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 137
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->b()V

    goto :goto_0

    .line 141
    :pswitch_2
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 143
    :pswitch_3
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    invoke-virtual {v0}, LAO;->c()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->h:Ljava/util/List;

    .line 144
    new-instance v0, LES;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->h:Ljava/util/List;

    invoke-direct {v0, p0, v1, v3, v2}, LES;-><init>(Lcom/yik/yak/ui/fragment/ManagePeeksFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->g:LES;

    .line 145
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->g:LES;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->b()V

    goto :goto_0

    .line 156
    :pswitch_4
    if-ne p2, v0, :cond_0

    .line 157
    if-nez p3, :cond_1

    .line 158
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->e:Landroid/content/Context;

    const-string v1, "Delete failed"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 162
    :cond_1
    const-string v0, "value"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-static {}, LAO;->a()LAO;

    move-result-object v1

    invoke-virtual {v1, v0}, LAO;->d(Ljava/lang/String;)V

    .line 166
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    invoke-virtual {v0}, LAO;->f()V

    .line 167
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    invoke-virtual {v0}, LAO;->c()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->h:Ljava/util/List;

    .line 168
    new-instance v0, LES;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->h:Ljava/util/List;

    invoke-direct {v0, p0, v1, v3, v2}, LES;-><init>(Lcom/yik/yak/ui/fragment/ManagePeeksFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->g:LES;

    .line 169
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->g:LES;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 171
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->b()V

    goto/16 :goto_0

    .line 179
    :pswitch_5
    if-ne p2, v0, :cond_0

    .line 180
    if-nez p3, :cond_2

    .line 181
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->e:Landroid/content/Context;

    const-string v1, "Edit failed"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 184
    :cond_2
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    const-string v1, "value"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    invoke-static {}, LAO;->a()LAO;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, LAO;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    invoke-virtual {v0}, LAO;->f()V

    .line 189
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->g:LES;

    invoke-virtual {v0}, LES;->notifyDataSetChanged()V

    .line 190
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->b()V

    goto/16 :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 141
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 208
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 209
    iget-object v2, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/PeekLocation;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->i:Lcom/yik/yak/data/models/PeekLocation;

    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 218
    invoke-super {p0, p1}, Lcom/yik/yak/ui/fragment/BaseFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 212
    :pswitch_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->i:Lcom/yik/yak/data/models/PeekLocation;

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->a(Lcom/yik/yak/data/models/PeekLocation;)V

    move v0, v1

    .line 213
    goto :goto_0

    .line 215
    :pswitch_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->i:Lcom/yik/yak/data/models/PeekLocation;

    iget-object v0, v0, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->i:Lcom/yik/yak/data/models/PeekLocation;

    iget-object v2, v2, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 216
    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    invoke-super {p0, p1, p2, p3}, Lcom/yik/yak/ui/fragment/BaseFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 202
    const/16 v0, 0x3e8

    const-string v1, "Rename Location"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 203
    const/16 v0, 0x3e9

    const-string v1, "Delete Location"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 204
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 54
    const v0, 0x7f03004b

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->d:Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->e:Landroid/content/Context;

    .line 57
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "ManagePEeksFragment onCreateView"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, LHm;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 58
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    invoke-virtual {v0}, LAO;->c()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->h:Ljava/util/List;

    .line 59
    new-instance v0, LES;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->e:Landroid/content/Context;

    const v2, 0x7f030067

    iget-object v3, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->h:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, LES;-><init>(Lcom/yik/yak/ui/fragment/ManagePeeksFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->g:LES;

    .line 61
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->d:Landroid/view/View;

    const v1, 0x7f0d012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->f:Landroid/widget/ListView;

    .line 63
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->b()V

    .line 65
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->g:LES;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 68
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->f:Landroid/widget/ListView;

    new-instance v1, LER;

    invoke-direct {v1, p0}, LER;-><init>(Lcom/yik/yak/ui/fragment/ManagePeeksFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    invoke-virtual {p0, v4}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->setHasOptionsMenu(Z)V

    .line 87
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->d:Landroid/view/View;

    return-object v0
.end method
