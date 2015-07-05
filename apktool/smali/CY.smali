.class LCY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LCX;


# direct methods
.method constructor <init>(LCX;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, LCY;->a:LCX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    .line 259
    iget-object v0, p0, LCY;->a:LCX;

    iget-object v0, v0, LCX;->a:Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;

    iget-object v0, v0, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_0

    .line 263
    :try_start_0
    new-instance v0, LFF;

    iget-object v1, p0, LCY;->a:LCX;

    iget-object v1, v1, LCX;->a:Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;

    iget-object v1, v1, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x19

    const v3, 0x7f0200eb

    const-wide/16 v4, 0xfa0

    invoke-direct/range {v0 .. v5}, LFF;-><init>(Landroid/app/Activity;IIJ)V

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1, v2}, LFF;->a(FF)LFF;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, LFF;->b(F)LFF;

    move-result-object v0

    new-instance v1, LFA;

    const/16 v2, 0x64

    const/4 v3, 0x0

    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0xbb8

    invoke-direct/range {v1 .. v7}, LFA;-><init>(IIJJ)V

    invoke-virtual {v0, v1}, LFF;->a(LFE;)LFF;

    move-result-object v0

    iget-object v1, p0, LCY;->a:LCX;

    iget-object v1, v1, LCX;->a:Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;

    iget-object v1, v1, Lcom/yik/yak/ui/adapter/viewholder/YakDetailViewHolder;->shareButton:Landroid/widget/TextView;

    const/16 v2, 0x19

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, LFF;->a(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const-string v1, "YikYak"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Particle system crashed for reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v1, v0}, Lal;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_0
    const-string v0, "YikYak"

    const-string v1, "Particle system tried to animate, but there was a null activity!"

    invoke-static {v8, v0, v1}, Lal;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
