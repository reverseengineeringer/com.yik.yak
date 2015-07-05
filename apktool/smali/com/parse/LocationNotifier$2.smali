.class final Lcom/parse/LocationNotifier$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$listener:Landroid/location/LocationListener;

.field final synthetic val$manager:Landroid/location/LocationManager;

.field final synthetic val$tcs:Lad;


# direct methods
.method constructor <init>(Lad;Landroid/location/LocationManager;Landroid/location/LocationListener;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/parse/LocationNotifier$2;->val$tcs:Lad;

    iput-object p2, p0, Lcom/parse/LocationNotifier$2;->val$manager:Landroid/location/LocationManager;

    iput-object p3, p0, Lcom/parse/LocationNotifier$2;->val$listener:Landroid/location/LocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parse/LocationNotifier$2;->val$tcs:Lad;

    new-instance v1, Lcom/parse/ParseException;

    const/16 v2, 0x7c

    const-string v3, "location fetch timed out"

    invoke-direct {v1, v2, v3}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lad;->a(Ljava/lang/Exception;)Z

    .line 67
    iget-object v0, p0, Lcom/parse/LocationNotifier$2;->val$manager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/parse/LocationNotifier$2;->val$listener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 68
    return-void
.end method
