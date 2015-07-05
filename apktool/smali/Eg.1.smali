.class LEg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LEf;


# direct methods
.method constructor <init>(LEf;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, LEg;->a:LEf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v1, "NOTIFICATIONS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, LEg;->a:LEf;

    sget-object v1, LEm;->a:LEm;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, LEf;->a(LEm;Z)V

    .line 80
    invoke-static {v3}, Lcom/yik/yak/YikYak;->a(I)V

    .line 81
    iget-object v0, p0, LEg;->a:LEf;

    invoke-virtual {v0}, LEf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 82
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, LEg;->a:LEf;

    sget-object v1, LEm;->b:LEm;

    invoke-virtual {v0, v1, v3}, LEf;->a(LEm;Z)V

    goto :goto_0
.end method
