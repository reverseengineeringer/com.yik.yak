.class LCP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/data/models/Website;

.field final synthetic b:LCO;


# direct methods
.method constructor <init>(LCO;Lcom/yik/yak/data/models/Website;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, LCP;->b:LCO;

    iput-object p2, p0, LCP;->a:Lcom/yik/yak/data/models/Website;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, LCP;->b:LCO;

    iget-object v0, v0, LCO;->a:LCL;

    iget-object v1, p0, LCP;->a:Lcom/yik/yak/data/models/Website;

    invoke-static {v0, v1}, LCL;->a(LCL;Lcom/yik/yak/data/models/Website;)V

    .line 200
    return-void
.end method
