.class LDS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:LDP;


# direct methods
.method constructor <init>(LDP;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, LDS;->a:LDP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 146
    if-eqz p2, :cond_0

    .line 148
    iget-object v0, p0, LDS;->a:LDP;

    invoke-static {v0}, LDP;->b(LDP;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    :cond_0
    iget-object v0, p0, LDS;->a:LDP;

    iget-object v1, p0, LDS;->a:LDP;

    invoke-static {v1}, LDP;->c(LDP;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1, v2}, LDP;->a(LDP;Landroid/widget/TextView;Z)V

    .line 150
    iget-object v0, p0, LDS;->a:LDP;

    invoke-static {v0, v2}, LDP;->a(LDP;Z)Z

    .line 152
    return-void
.end method
