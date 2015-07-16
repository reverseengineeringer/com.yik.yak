.class LEX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LEW;


# direct methods
.method constructor <init>(LEW;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, LEX;->a:LEW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 321
    :try_start_0
    iget-object v0, p0, LEX;->a:LEW;

    iget-object v0, v0, LEW;->b:Lcom/yik/yak/ui/fragment/MeFragment;

    new-instance v1, LCX;

    iget-object v2, p0, LEX;->a:LEW;

    iget-object v2, v2, LEW;->b:Lcom/yik/yak/ui/fragment/MeFragment;

    invoke-virtual {v2}, Lcom/yik/yak/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030068

    invoke-static {}, LAg;->a()LAg;

    move-result-object v4

    invoke-virtual {v4}, LAg;->c()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, LCX;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-static {v0, v1}, Lcom/yik/yak/ui/fragment/MeFragment;->a(Lcom/yik/yak/ui/fragment/MeFragment;LCX;)LCX;

    .line 322
    iget-object v0, p0, LEX;->a:LEW;

    iget-object v0, v0, LEW;->b:Lcom/yik/yak/ui/fragment/MeFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/MeFragment;->d(Lcom/yik/yak/ui/fragment/MeFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, LEX;->a:LEW;

    iget-object v1, v1, LEW;->b:Lcom/yik/yak/ui/fragment/MeFragment;

    invoke-static {v1}, Lcom/yik/yak/ui/fragment/MeFragment;->c(Lcom/yik/yak/ui/fragment/MeFragment;)LCX;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
