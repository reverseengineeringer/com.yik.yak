.class public Lcom/yik/yak/ui/fragment/PeekListFragment;
.super Lcom/yik/yak/ui/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements LBI;
.implements LBo;


# instance fields
.field public c:LFj;

.field public d:Landroid/os/Vibrator;

.field public e:Landroid/widget/ListView;

.field private final f:LFl;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;-><init>()V

    .line 41
    new-instance v0, LFl;

    invoke-direct {v0, p0}, LFl;-><init>(Lcom/yik/yak/ui/fragment/PeekListFragment;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/PeekListFragment;->f:LFl;

    .line 43
    const-string v0, "PeekListFragment"

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/PeekListFragment;->g:Ljava/lang/String;

    .line 251
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 86
    const v0, 0x7f0d013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/PeekListFragment;->e:Landroid/widget/ListView;

    .line 87
    new-instance v0, LFj;

    invoke-direct {v0, p0}, LFj;-><init>(Lcom/yik/yak/ui/fragment/PeekListFragment;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/PeekListFragment;->c:LFj;

    .line 88
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PeekListFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/PeekListFragment;->c:LFj;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    return-void
.end method

.method private a(Lcom/yik/yak/data/models/PeekLocation;)V
    .locals 4

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PeekListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    const-string v1, "title"

    const-string v2, "Delete Peek Location"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do you want to remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "value"

    iget-object v2, p1, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "okText"

    const-string v2, "Yes"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "cancelText"

    const-string v2, "No"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/PeekListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 63
    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/fragment/PeekListFragment;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/PeekListFragment;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/fragment/PeekListFragment;Lcom/yik/yak/data/models/PeekLocation;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/fragment/PeekListFragment;->a(Lcom/yik/yak/data/models/PeekLocation;)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PeekListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/PeekListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 68
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PeekListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PeekListFragment;->c:LFj;

    invoke-static {}, LAO;->a()LAO;

    move-result-object v1

    invoke-virtual {v1}, LAO;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, LFj;->a(Ljava/util/ArrayList;)V

    .line 74
    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PeekListFragment;->e:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 94
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PeekListFragment;->e:Landroid/widget/ListView;

    new-instance v1, LFh;

    invoke-direct {v1, p0}, LFh;-><init>(Lcom/yik/yak/ui/fragment/PeekListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PeekListFragment;->e:Landroid/widget/ListView;

    new-instance v1, LFi;

    invoke-direct {v1, p0}, LFi;-><init>(Lcom/yik/yak/ui/fragment/PeekListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 142
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string v0, "Peeks"

    return-object v0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public e()LGf;
    .locals 1

    .prologue
    .line 206
    sget-object v0, LGf;->c:LGf;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public g()V
    .locals 3

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PeekListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/PeekListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 218
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/yik/yak/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PeekListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/PeekListFragment;->d:Landroid/os/Vibrator;

    .line 148
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 165
    packed-switch p1, :pswitch_data_0

    .line 185
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 167
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 169
    :pswitch_2
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    invoke-virtual {v0}, LAO;->f()V

    .line 170
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PeekListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 172
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PeekListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PeekListFragment;->c:LFj;

    invoke-static {}, LAO;->a()LAO;

    move-result-object v1

    invoke-virtual {v1}, LAO;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, LFj;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 179
    :pswitch_3
    const-string v0, "value"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 182
    :pswitch_4
    invoke-static {}, LAO;->a()LAO;

    move-result-object v1

    invoke-virtual {v1, v0}, LAO;->d(Ljava/lang/String;)V

    .line 183
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    invoke-virtual {v0}, LAO;->f()V

    .line 184
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/PeekListFragment;->d()V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 167
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 180
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 78
    const v0, 0x7f03004e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/PeekListFragment;->a(Landroid/view/View;)V

    .line 80
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/PeekListFragment;->k()V

    .line 81
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/fragment/PeekListFragment;->setHasOptionsMenu(Z)V

    .line 82
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;->onPause()V

    .line 160
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    const-string v1, "PeekListFragment"

    invoke-virtual {v0, v1}, LAO;->a(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 152
    invoke-super {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;->onResume()V

    .line 153
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    const-string v1, "PeekListFragment"

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/PeekListFragment;->f:LFl;

    invoke-virtual {v0, v1, v2}, LAO;->a(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    .line 154
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/PeekListFragment;->d()V

    .line 155
    return-void
.end method
